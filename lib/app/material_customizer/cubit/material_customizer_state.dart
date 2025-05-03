part of 'material_customizer_cubit.dart';

@freezed
class MaterialCustomizerState with _$MaterialCustomizerState {
  /// Initial state - no data has been loaded yet
  const factory MaterialCustomizerState.initial() = _Initial;

  /// Loading state - request is in progress
  const factory MaterialCustomizerState.loading() = _Loading;

  /// Loaded state - exercise has been successfully loaded
  const factory MaterialCustomizerState.loaded({required MaterialContent material}) =
      _Loaded;

  /// Error state - an error occurred while loading the exercise
  const factory MaterialCustomizerState.error({required String message}) = _Error;
}
