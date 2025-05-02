import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/model/user/user.dart';
import 'package:speakup_final/repository/auth/auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  AuthCubit(this._authRepository) : super(const AuthState.initial());

  Future<void> signInWithGoogle() async {
    emit(const AuthState.loading());
    try {
      final user = await _authRepository.signInWithGoogle();
      await _authRepository.storeUser(user);
      final fullUserData = await _authRepository.getCurrentUser();

      emit(AuthState.authenticated(fullUserData));
    } catch (e) {
      if (e.toString().contains('accessToken != null || idToken != null')) {
        emit(const AuthState.error('Login dengan Google dibatalkan'));
      } else {
        Logger().e(e);
        emit(const AuthState.error('Terjadi kesalahan saat login, silahkan coba lagi'));
      }
    }
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
    emit(const AuthState.error('User keluar dari aplikasi'));
  }

  Future<void> getCurrentUser() async {
    try {
      final user = await _authRepository.getCurrentUser();
      emit(AuthState.authenticated(user));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
