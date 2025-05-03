import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igris/components/topsheet.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/app/material_customizer/cubit/material_customizer_cubit.dart';
import 'package:speakup_final/model/material/material.dart' as material_model;

class DetailedMaterialPage extends StatelessWidget {
  final material_model.Material material;
  final bool isCompleted;

  const DetailedMaterialPage({
    super.key,
    required this.material,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).colorScheme.secondary,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Theme.of(context).colorScheme.primary,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: BlocProvider(
        create:
            (context) =>
                MaterialCustomizerCubit()..customizeMaterial(
                  userID:
                      context.read<AuthCubit>().state.mapOrNull(
                        authenticated: (state) => state.user.uid,
                      )!,
                  nativeLanguage:
                      context.read<AuthCubit>().state.mapOrNull(
                        authenticated: (state) => state.user.nativeLanguage,
                      )!,
                  goal:
                      context.read<AuthCubit>().state.mapOrNull(
                        authenticated: (state) => state.user.goal,
                      )!,
                  level:
                      context.read<AuthCubit>().state.mapOrNull(
                        authenticated:
                            (state) =>
                                state.user.englishMastery.toString().split('.').last,
                      )!,
                  material: material,
                  struggle: ""
                ),
        child: BlocBuilder<MaterialCustomizerCubit, MaterialCustomizerState>(
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
              loaded: (customizedMaterial) {
                return SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Topsheet(
                          isBackButtonEnabled: true,
                          greetingIconPath: "assets/icons/greeting.svg",
                          greetingText: "let's learn!",
                          headerText: material.title ?? "",
                          subheaderText: material.subtitle ?? "",
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0).copyWith(top: 48.0),
                          child: Column(
                            children: [
                              Text(customizedMaterial.explanation),
                              const SizedBox(height: 16.0),
                              Text(customizedMaterial.analogy),
                              const SizedBox(height: 16.0),
                              Text(customizedMaterial.example),
                              const SizedBox(height: 16.0),
                              Text(customizedMaterial.exercise),
                              const SizedBox(height: 16.0),
                              Text(customizedMaterial.personalFeedback),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              error: (error) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 64.0),
                    child: Text("Error: $error"),
                  ),
                );
              },
              orElse: () => const Center(child: Text("Error loading material")),
            );
          },
        ),
      ),
    );
  }
}
