import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igris/components/topsheet.dart';
import 'package:flutter_sanity_portable_text/model/text_block.dart';
import 'package:flutter_sanity_portable_text/ui/portable_text_widget.dart';
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
        create: (context) => MaterialCustomizerCubit()..customizeMaterial(
          userID: context.read<AuthCubit>().state.mapOrNull(
            authenticated: (state) => state.user.uid
          )!,
          nativeLanguage: context.read<AuthCubit>().state.mapOrNull(
            authenticated: (state) => state.user.nativeLanguage
          )!,
          goal: context.read<AuthCubit>().state.mapOrNull(
            authenticated: (state) => state.user.goal
          )!,
          level: context.read<AuthCubit>().state.mapOrNull(
            authenticated: (state) => state.user.englishMastery.toString().split('.').last
          )!,
          material: material
        ),
        child: ListView(
          children: [
            Topsheet(
              headerText: material.title,
              isBackButtonEnabled: true,
              subheaderText: material.subtitle,
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: PortableText(
                blocks:
                    material.content!.map((block) {
                      if (block is Map<String, dynamic>) {
                        try {
                          return TextBlockItem.fromJson(block);
                        } catch (e) {
                          // Fallback if JSON parsing fails
                          return TextBlockItem(
                            children: [Span(text: "Error parsing content")],
                          );
                        }
                      }

                      // Fallback for non-map types
                      return TextBlockItem(children: [Span(text: block.toString())]);
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
