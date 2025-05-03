import 'dart:convert';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:logger/logger.dart';

class MaterialContent {
  final String description;
  final String analogy;
  final String explanation;
  final String example;
  final String exercise;
  final int exerciseDuration;
  final String personalFeedback;

  MaterialContent({
    required this.description,
    required this.analogy,
    required this.explanation,
    required this.example,
    required this.exercise,
    required this.exerciseDuration,
    required this.personalFeedback,
  });

  factory MaterialContent.fromJson(Map<String, dynamic> json) {
    return MaterialContent(
      description: json['description'] ?? 'No description provided',
      analogy: json['analogy'] ?? 'No analogy provided',
      explanation: json['explanation'] ?? 'No explanation provided',
      example: json['example'] ?? 'No example provided',
      exercise: json['exercise'] ?? 'No exercise provided',
      exerciseDuration: int.tryParse(json['exerciseDuration']) ?? 10,
      personalFeedback: json['personalFeedback'] ?? 'No feedback provided',
    );
  }
}

class MaterialCustomizerRepository {
  final Gemini _geminiInstance;

  MaterialCustomizerRepository({Gemini? geminiInstance})
    : _geminiInstance = geminiInstance ?? Gemini.instance;

  Future<MaterialContent> customizeAndStoreMaterial({
    required String title,
    required String subtitle,
    required String nativeLanguage,
    required String goal,
    required String proficiencyLevel,
    required String struggle,
  }) async {
    try {
      final prompt = '''
Create a learning material that teaches English with the following specifications:

Topic: $title
Subtitle: $subtitle
Native Language: $nativeLanguage
Goal: $goal
Proficiency Level: $proficiencyLevel
Current Struggle: $struggle

Please provide the following information in your response:

1. Description: A brief description of the topic in $nativeLanguage (if beginner) or English (if advanced)
2. Analogy: A cultural analogy relevant to $nativeLanguage speakers
3. Explanation: A detailed explanation related to $goal
4. Example: A practical example in the context of $goal
5. Exercise: A short exercise description
6. Duration: The estimated duration of the exercise in minutes
7. Personal Feedback: Address the user's struggle ("$struggle") and provide specific advice on how this topic can help overcome it. Connect the struggle to the learning material and suggest practical ways to apply the concepts.

Language Distribution Requirements:
- Beginner: 90% $nativeLanguage, 10% English
- Intermediate: 50% $nativeLanguage, 50% English
- Advanced: 10% $nativeLanguage, 90% English

Please provide your response as a JSON object with the following keys:
description, analogy, explanation, example, exercise, exerciseDuration, personalFeedback
''';

      // Updated to use the new prompt method with Part.text
      final response = await _geminiInstance.prompt(parts: [Part.text(prompt)]);

      if (response == null || response.output == null || response.output!.isEmpty) {
        throw Exception('Gemini returned empty response');
      }
      final rawOutput = response.output!;
      final cleanedOutput = rawOutput.replaceAll(r'\\"', '"');
      final jsonString = cleanedOutput.substring(
        7,
        cleanedOutput.length - 4,
      ); // assuming JSON block is wrapped
      final data = jsonDecode(jsonString);

      print(data);

      return MaterialContent.fromJson(data);
    } catch (e) {
      // Log the error and return a user-friendly message
      Logger().e('Error customizing material: $e');
      throw Exception('Failed to generate speaking feedback. Please try again later.');
    }
  }
}
