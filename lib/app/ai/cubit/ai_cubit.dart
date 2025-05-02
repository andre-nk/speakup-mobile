import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:speakup_final/model/session/session.dart';
import 'package:speakup_final/repository/ai/ai_repository.dart';
import 'package:speakup_final/repository/session/session_repository.dart';
import 'package:uuid/uuid.dart';

part 'ai_state.dart';
part 'ai_cubit.freezed.dart';

class AiCubit extends Cubit<AiState> {
  final SessionRepository _sessionRepository;
  final AiRepository _aiRepository;
  Stream<Session>? _resultSubscription;

  AiCubit({
    SessionRepository? sessionRepository,
    AiRepository? aiRepository,
  }) : _sessionRepository = sessionRepository ?? SessionRepository(),
       _aiRepository = aiRepository ?? AiRepository(),
       super(const AiState.initial());


  Future<void> uploadAudio({
    required String audioFilePath,
    required String userID,
    required String exerciseID,
  }) async {
    try {
      // Step 1: Emit uploading state
      emit(const AiState.uploading());

      final sessionID = const Uuid().v4();

      await _sessionRepository.uploadAudioFile(
        audioFilePath: audioFilePath,
        userID: userID,
        sessionID: sessionID,
      );

      // Step 2: Change to processing state
      emit(const AiState.processing());

      // Subscribe to the result stream
      _resultSubscription = await _aiRepository.subscribeResult(
        userID: userID,
        exerciseID: exerciseID,
        sessionID: sessionID,
      );

      // Listen to the result stream
      _resultSubscription?.listen(
        (session) {
          emit(AiState.completed(session: session));
        },
        onError: (error) {
          emit(AiState.error(message: error.toString()));
        },
      );
    } catch (e) {
      Logger().e('Error in uploadAudio: $e');
      emit(AiState.error(message: e.toString()));
    }
  }

  Future<void> mockUploadAudio({
    required String audioFilePath,
    required String userID,
    required String exerciseID,
  }) async {
    try {
      // Step 1: Emit uploading state
      emit(const AiState.uploading());

      final sessionID = const Uuid().v4();
      final file = File(audioFilePath);

      if (!await file.exists()) {
        throw Exception('Audio file not found');
      }

      Logger().i('Audio file exists: $audioFilePath');
      Logger().i('Session ID: $sessionID');

      // Timer 3s
      await Future.delayed(const Duration(seconds: 3));

      emit(const AiState.completed(session: null));
    } catch (e) {
      emit(AiState.error(message: e.toString()));
    }
  }
}
