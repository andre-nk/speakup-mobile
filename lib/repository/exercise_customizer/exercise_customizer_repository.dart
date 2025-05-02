import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/model/exercise/exercise.dart';

class ExerciseCustomizerRepository {
  final Gemini _geminiInstance;

  ExerciseCustomizerRepository({Gemini? geminiInstance})
    : _geminiInstance = geminiInstance ?? Gemini.instance;

  Future<Exercise> customizeAndStoreExercise(String userID, String nativeLanguage, String goal, String level) async {
    try {
      final prompt = jsonEncode({
            'contents': [
              {
                'parts': [
                  {'text': '''
Create a speaking exercise for English language learning with the following parameters:
- Level: $level
- Native Language: $nativeLanguage
- Learning Goal: $goal

Requirements:
1. The exercise should be a short speaking task (max 30 seconds)
2. Instructions should be provided in both English and $nativeLanguage based on the level:
   - Beginner: Mostly in $nativeLanguage with key English terms
   - Intermediate: 50% $nativeLanguage, 50% English
   - Advanced: Mostly in English with minimal $nativeLanguage
3. The difficulty of vocabulary and structure should match the level
4. The content should be relevant to the learning goal: $goal

Please provide the response in JSON format with the following structure:
{
  "id": "unique-uuid",
  "sequence": 1,
  "title": "Exercise Title",
  "estimatedDuration": 2,
  "level": "$level",
  "instructions": ["Instructions in plain text in $nativeLanguage"],
  "relatedMaterialIds": []
}

The instructions should be structured as a series of bullet points or paragraphs using the RichText format.
'''}
                ]
              }
            ],
            'generationConfig': {
              'responseMimeType': 'application/json',
            }
          });

      // Updated to use the new prompt method with Part.text
      final response = await _geminiInstance.prompt(parts: [Part.text(prompt)]);

      if (response == null || response.output == null || response.output!.isEmpty) {
        throw Exception('Gemini returned empty response');
      }

      Logger().i(response.output!.substring(7, response.output!.length - 4));

      //parse response to exercise object
      final exerciseData = jsonDecode(response.output!.substring(7, response.output!.length - 4));
      final customizedExercise = Exercise.fromJson(exerciseData);

      //store to Firestore
      FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('customized_exercises')
          .doc(customizedExercise.id)
          .set(customizedExercise.toJson());

      return customizedExercise;
    } catch (e) {
      // Log the error and return a user-friendly message
      throw Exception('Failed to generate speaking feedback. Please try again later.');
    }
  }
}