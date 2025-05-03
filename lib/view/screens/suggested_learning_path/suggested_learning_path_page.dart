import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igris/components/button.dart';
import 'package:igris/components/headline.dart';
import 'package:igris/components/tile.dart';
import 'package:igris/components/topsheet.dart';
import 'package:speakup_final/app/curriculum/cubit/curriculum_cubit.dart';
import 'package:speakup_final/app/curriculum_customizer/cubit/curriculum_customizer_cubit.dart';
import 'package:speakup_final/model/session_summary/session_summary.dart';
import 'package:speakup_final/view/screens/material/detailed_material_page.dart';
import 'package:speakup_final/view/screens/wrapper/wrapper_page.dart';
import 'package:speakup_final/view/widgets/custom_collapsible.dart';

class SuggestedLearningPathPage extends StatelessWidget {
  final SpeechAnalysisFeedback speechAnalysisFeedback;
  const SuggestedLearningPathPage({super.key, required this.speechAnalysisFeedback});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CurriculumCubit()..fetchMaterialCurriculum()),
        BlocProvider(
          create:
              (context) =>
                  CurriculumCustomizerCubit()
                    ..customizeMaterial(speechAnalysisFeedback: speechAnalysisFeedback),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Topsheet(
                  isBackButtonEnabled: true,
                  greetingIconPath: "assets/icons/greeting.svg",
                  greetingText: "let's learn!",
                  headerText: "Suggested\nLearning Path",
                  subheaderText:
                      'To improve your spoken communication, focus on key areas such as grammar accuracy, speech pacing, and vocabulary expansion. Strengthening subject-verb agreement ensures correctness, while increasing your speaking speed to 120-150 WPM helps maintain a natural rhythm. Additionally, reducing filler words like "um" and "uh" enhances clarity.  Mastering these aspects will help refine both formality and delivery for more confident communication.',
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0).copyWith(top: 48.0),
                  child: Column(
                    children: [
                      const Headline(title: "Curriculum"),
                      BlocBuilder<CurriculumCustomizerCubit, CurriculumCustomizerState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading:
                                () => const Center(child: CircularProgressIndicator()),
                            error:
                                (message) => Center(
                                  child: Text(
                                    message,
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                            loaded: (feedback) {
                              return BlocBuilder<CurriculumCubit, CurriculumState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    initial:
                                        () => const Center(child: Text("Loading...")),
                                    loading:
                                        () => const Center(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(vertical: 64.0),
                                            child: CircularProgressIndicator(),
                                          ),
                                        ),
                                    materialLoaded: (materialCurriculumData) {
                                      final widgets = <Widget>[];
                                      for (final level in materialCurriculumData.levels) {
                                        if (level.sectionObjects == null ||
                                            level.sectionObjects!.isEmpty) {
                                          continue;
                                        }

                                        for (
                                          var i = 0;
                                          i < level.sectionObjects!.length;
                                          i++
                                        ) {
                                          final section = level.sectionObjects![i];

                                          if (section.materialObjects == null ||
                                              section.materialObjects!.isEmpty) {
                                            continue;
                                          }

                                          final materialTiles = <Widget>[];

                                          for (
                                            var j = 0;
                                            j < section.materialObjects!.length;
                                            j++
                                          ) {
                                            final material = section.materialObjects![j];
                                            materialTiles.add(
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 12.0,
                                                ),
                                                child: Tile(
                                                  title: "${j + 1}.  ${material.title}",
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) {
                                                          return DetailedMaterialPage(
                                                            material: material,
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  },
                                                  subtitle: material.subtitle ?? "",
                                                ),
                                              ),
                                            );
                                          }

                                          widgets.add(
                                            CustomCollapsible(
                                              sectionNumber: "",
                                              title: section.title ?? "",
                                              children: materialTiles,
                                            ),
                                          );

                                          widgets.add(const Divider(thickness: 2.0));
                                        }
                                      }

                                      return widgets.isEmpty
                                          ? const Center(
                                            child: Text("No curriculum data available"),
                                          )
                                          : Column(children: widgets);
                                    },
                                    error:
                                        (message) => Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 64.0,
                                            ),
                                            child: Text("Error loading curriculum: "),
                                          ),
                                        ),
                                    orElse:
                                        () => const Center(child: Text("Unknown state")),
                                  );
                                },
                              );
                            },
                            orElse: () => const SizedBox.shrink(),
                          );
                        },
                      ),
                      const SizedBox(height: 64),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          text: "View the detailed curriculum",
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          text: "Back to Home",
                          backgroundColor: Theme.of(context).colorScheme.surface,
                          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const WrapperPage();
                                },
                              ),
                            );
                          },
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
    );
  }
}
