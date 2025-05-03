import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'intl_cubit_state.dart';
part 'intl_cubit_cubit.freezed.dart';

class IntlCubitCubit extends Cubit<IntlCubitState> {
  IntlCubitCubit() : super(IntlCubitState.initial());

  void setLocale(String locale) {
    emit(IntlCubitState.set(locale));
  }
}
