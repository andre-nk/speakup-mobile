import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:speakup_final/model/exercise/exercise.dart';

class ExerciseRepository {
  final Gemini _geminiInstance;

  ExerciseRepository({Gemini? geminiInstance})
    : _geminiInstance = geminiInstance ?? Gemini.instance;

  Future<String> customizeAndStoreExercise(String userID, Exercise exercise) async {
    try {
      final sessionJson = jsonEncode(exercise.toJson());

      final prompt = '''
You are an expert IELTS speaking examiner. Analyze this speaking practice data and provide personalized feedback.

Focus on:
1. Speaking fluency (based on WPM, filler words)
2. Pronunciation accuracy (misarticulated words)
3. Grammar and sentence structure
4. Vocabulary usage and formality
5. Pitch variation and expressiveness

Provide:
- 2-3 specific strengths
- 2-3 areas for improvement with specific examples from the data
- 3 practical exercises/tips to address the weaknesses
- An overall assessment of their current level

Format your response clearly with headers for each section. Be encouraging but honest. Avoid technical jargon.

Here is the speaking analysis data:
$sessionJson
''';

      // Updated to use the new prompt method with Part.text
      final response = await _geminiInstance.prompt(parts: [Part.text(prompt)]);

      if (response == null || response.output == null || response.output!.isEmpty) {
        throw Exception('Gemini returned empty response');
      }

      //parse response to exercise object
      final exerciseData = jsonDecode(response.output!);
      final customizedExercise = Exercise.fromJson(exerciseData);

      //store to Firestore
      FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('customized_exercises')
          .doc(customizedExercise.id)
          .set(customizedExercise.toJson());

      return response.output!;
    } catch (e) {
      // Log the error and return a user-friendly message
      throw Exception('Failed to generate speaking feedback. Please try again later.');
    }
  }
}
