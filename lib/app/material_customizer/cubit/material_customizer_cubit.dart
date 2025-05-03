import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/material/material.dart';
import 'package:speakup_final/repository/material_customizer/material_customizer_repository.dart';

part 'material_customizer_state.dart';
part 'material_customizer_cubit.freezed.dart';

class MaterialCustomizerCubit extends Cubit<MaterialCustomizerState> {
  final MaterialCustomizerRepository _repository;

  MaterialCustomizerCubit()
    : _repository = MaterialCustomizerRepository(),
      super(MaterialCustomizerState.initial());

  Future<void> customizeMaterial({
    required String userID,
    required String nativeLanguage,
    required String goal,
    required String level,
    required String struggle,
    required Material material,
  }) async {
    try {
      // Emit loading state
      emit(const MaterialCustomizerState.loading());

      // Fetch exercise from repository
      final customMaterial = await _repository.customizeAndStoreMaterial(
        title: material.title ?? "",
        subtitle: material.subtitle ?? "",
        nativeLanguage: nativeLanguage,
        goal: goal,
        proficiencyLevel: level,
        struggle: struggle
      );

      emit(MaterialCustomizerState.loaded(material: customMaterial));
    } catch (e) {
      // Emit error state with the error message
      emit(
        MaterialCustomizerState.error(
          message: 'Failed to load material: ${e.toString()}',
        ),
      );
    }
  }
}
