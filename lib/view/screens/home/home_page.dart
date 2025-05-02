import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igris/components/greeting.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/app/streak/cubit/streak_cubit.dart';

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
                color: isStreak
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

      if (i < 7){
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
            ],
          ),
        ),
      ),
    );
  }
}
