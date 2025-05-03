import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_svg/svg.dart';
import 'package:igris/components/button.dart';
import 'package:igris/components/collapsible.dart';
import 'package:igris/components/greeting.dart';
import 'package:igris/components/headline.dart';
import 'package:igris/components/tile.dart';
import 'package:speakup_final/app/article/cubit/article_cubit.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/app/content_recommendation/cubit/content_recommendation_cubit.dart';
import 'package:speakup_final/app/content_recommendation/cubit/content_recommendation_state.dart';
import 'package:speakup_final/app/streak/cubit/streak_cubit.dart';
import 'package:speakup_final/view/screens/article/article_page.dart';

class _DayCircle extends StatelessWidget {
  final String dayLabel;
  final bool isStreak;

  const _DayCircle({required this.dayLabel, this.isStreak = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    isStreak
                        ? Theme.of(context).colorScheme.tertiaryContainer
                        : Theme.of(context).colorScheme.errorContainer,
              ),
              child: Center(
                child: Text(dayLabel, style: Theme.of(context).textTheme.bodySmall),
              ),
            ),
          ),
          if (isStreak) const Positioned(top: -4, right: -2, child: Text("⚡")),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<Widget> _buildDayCircles(BuildContext context, int? currentStreak) {
    final dayLabels = ['M', 'T', 'W', 'Th', 'F', 'S', 'Su'];
    final List<Widget> dayCircles = [];
    final currentDayIndex = DateTime.now().weekday - 1; // Adjust for 0-based index

    for (int i = 7; i > 0; i--) {
      final dayLabel = dayLabels[(currentDayIndex - i + 7) % 7];
      final isStreak = currentStreak != null && currentStreak >= i;

      if (i < 7) {
        dayCircles.add(const SizedBox(width: 8));
      }

      dayCircles.add(_DayCircle(dayLabel: dayLabel, isStreak: isStreak));
    }

    return dayCircles;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0).copyWith(bottom: 0),
        child: BlocProvider(
          create:
              (context) =>
                  StreakCubit()..fetchStreak(
                    context.read<AuthCubit>().state.mapOrNull(
                          authenticated: (state) => state.user.uid,
                        ) ??
                        "",
                  ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Greeting(
                        iconPath: "assets/icons/greeting.svg",
                        message: "SpeakUp",
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                        child: BlocBuilder<StreakCubit, StreakState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () => const SizedBox(),
                              loading: () => const CircularProgressIndicator(),
                              loaded: (longestStreak, currentStreak) {
                                return Text(
                                  '$currentStreak ⚡',
                                  style: Theme.of(context).textTheme.titleMedium,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: BlocBuilder<StreakCubit, StreakState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        loading: () => Row(children: _buildDayCircles(context, null)),
                        loaded: (longestStreak, currentStreak) {
                          return Row(children: _buildDayCircles(context, currentStreak));
                        },
                      );
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        SvgPicture.asset(
                          "assets/images/mascot.svg",
                          height: MediaQuery.of(context).size.height * 0.225,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.3,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FlutterI18n.translate(context, "home.quick"),
                                      style: Theme.of(
                                        context,
                                      ).textTheme.headlineLarge!.copyWith(
                                        color: Theme.of(context).colorScheme.onSecondary,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      FlutterI18n.translate(context, "home.quick_description"),
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall!.copyWith(
                                        letterSpacing: 0.1,
                                        color: Theme.of(context).colorScheme.onSecondary,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Button(
                                  text: FlutterI18n.translate(context, "home.vocab"),
                                  onPressed: () {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.onSecondary,
                                  textStyle: Theme.of(
                                    context,
                                  ).textTheme.titleSmall!.copyWith(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 36),
                  child: Column(
                    children: [
                      Headline(
                        title: FlutterI18n.translate(context, "home.jump"),
                        isDividerEnabled: false,
                      ),
                      Collapsible(
                        sectionNumber: "10.",
                        title: FlutterI18n.translate(context, "home.high"),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 12.0),
                            child: Tile(
                              title: FlutterI18n.translate(context, "home.thought"),
                              subtitle: FlutterI18n.translate(context, "home.thought_subtitle"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 36),
                  child: Column(
                    children: [
                      Headline(
                        title: FlutterI18n.translate(context, "home.content"),
                        subtitle: FlutterI18n.translate(context, "home.content_subtitle"),
                        isDividerEnabled: false,
                      ),
                      BlocProvider(
                        create:
                            (context) =>
                                ContentRecommendationCubit()
                                  ..getAllContentRecommendations(),
                        child: BlocBuilder<
                          ContentRecommendationCubit,
                          ContentRecommendationState
                        >(
                          builder: (context, state) {
                            return state.maybeWhen(
                              error:
                                  (message) => Text(
                                    message,
                                    style: Theme.of(context).textTheme.bodySmall,
                                  ),
                              orElse: () => const SizedBox(),
                              loading: () => const CircularProgressIndicator(),
                              loaded: (recommendations) {
                                return Container(
                                  height: 250,
                                  padding: const EdgeInsets.only(top: 16),
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: recommendations.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      final recommendation = recommendations[index];
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 180,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    recommendation.coverImage ?? "",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 36, bottom: 12),
                  child: Headline(
                    title: FlutterI18n.translate(context, "home.feeds"),
                    isDividerEnabled: false,
                  ),
                ),
              ),
              BlocProvider(
                create: (context) => ArticleCubit()..getAllArticles(),
                child: BlocBuilder<ArticleCubit, ArticleState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      error:
                          (message) => SliverToBoxAdapter(
                            child: Text(
                              message,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                      orElse: () => const SliverToBoxAdapter(child: SizedBox()),
                      loading:
                          () => const SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          ),
                      loaded: (recommendations) {
                        return SliverList(
                          delegate: SliverChildBuilderDelegate((context, index) {
                            final recommendation = recommendations[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ArticlePage(
                                      article: recommendation,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Theme.of(context).colorScheme.surface,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              recommendation.coverImage ?? "",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 0.0,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              recommendation.title,
                                              style: Theme.of(context).textTheme.titleLarge,
                                            ),
                                            const SizedBox(height: 8),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  recommendation.author,
                                                  style:
                                                      Theme.of(context).textTheme.bodySmall,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }, childCount: recommendations.length),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
