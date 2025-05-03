part of 'intl_cubit_cubit.dart';

@freezed
class IntlCubitState with _$IntlCubitState {
  const factory IntlCubitState.initial() = _Initial;
  const factory IntlCubitState.set(String locale) = _Set;
}
