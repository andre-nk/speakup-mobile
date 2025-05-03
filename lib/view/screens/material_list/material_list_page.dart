import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:igris/components/collapsible.dart';
import 'package:igris/components/greeting.dart';
import 'package:igris/components/tile.dart';
import 'package:speakup_final/app/curriculum/cubit/curriculum_cubit.dart';
import 'package:speakup_final/view/screens/material/detailed_material_page.dart';

class MaterialListPage extends StatelessWidget {
  const MaterialListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CurriculumCubit()..fetchMaterialCurriculum()),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Greeting(
                    iconPath: "assets/icons/greeting.svg",
                    message: FlutterI18n.translate(context, "material_list.title"),
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(height: 24.0),
                  BlocBuilder<CurriculumCubit, CurriculumState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        initial: () => const Center(child: Text("Loading...")),
                        loading:
                            () => const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 64.0),
                                child: CircularProgressIndicator(),
                              ),
                            ),
                        materialLoaded: (materialCurriculumData) {
                          final widgets = <Widget>[];
                          var globalSectionCounter = 1;

                          for (final level in materialCurriculumData.levels) {
                            if (level.sectionObjects == null ||
                                level.sectionObjects!.isEmpty) {
                              continue;
                            }

                            for (var i = 0; i < level.sectionObjects!.length; i++) {
                              final section = level.sectionObjects![i];
                              final sectionIndex =
                                  globalSectionCounter; // Use global counter instead of i + 1

                              if (section.materialObjects == null ||
                                  section.materialObjects!.isEmpty) {
                                continue;
                              }

                              final materialTiles = <Widget>[];

                              for (var j = 0; j < section.materialObjects!.length; j++) {
                                final material = section.materialObjects![j];
                                materialTiles.add(
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 12.0),
                                    child: Tile(
                                      title: "$sectionIndex.${j + 1}.  ${material.title}",
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
                                      icon: Icons.circle_outlined,
                                    ),
                                  ),
                                );
                              }

                              widgets.add(
                                Collapsible(
                                  sectionNumber: "$sectionIndex",
                                  title: section.title ?? "",
                                  children: materialTiles,
                                ),
                              );

                              widgets.add(const Divider(thickness: 2.0));
                              globalSectionCounter++;
                            }
                          }

                          return widgets.isEmpty
                              ? const Center(child: Text("No curriculum data available"))
                              : Column(children: widgets);
                        },
                        error:
                            (message) => Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 64.0),
                                child: Text("Error loading curriculum: $message"),
                              ),
                            ),
                        orElse: () => const Center(child: Text("Unknown state")),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
