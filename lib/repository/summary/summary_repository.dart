import 'dart:convert';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/model/session/session.dart';
import 'package:speakup_final/model/session_summary/session_summary.dart';

class SummaryRepository {
  final Gemini _geminiInstance;

  SummaryRepository({Gemini? geminiInstance})
    : _geminiInstance = geminiInstance ?? Gemini.instance;

  /// Generates comprehensive speaking feedback from session data
  Future<SpeechFeedback> generateSessionFeedback(Session session) async {
    try {
      final prompt = {
        'contents': [
          {
            'parts': [
              {
                'text': '''
Please analyze this speech transcript and provide feedback based on the following parameters:

1. Speaking Rate (${session.calculateOverallWPM()} WPM):
   - If < 120: "Speaking too slowly"
   - If > 150: "Speaking too fast"
   - If 120-150: null

2. Vocal Variation (${session.pitchResult.pitchAnalysis.isMonotone ? 'monotone' : 'not monotone'}):
   - If monotone: "Lack of pitch variation and rhythm"
   - Otherwise: null

3. Silent Ratio (${session.pitchResult.silentRatio}):
   - If > 0.3: "Too much silence; possibly due to hesitation or low volume"
   - Otherwise: null

4. Word Theme Analysis:
   - Most common words: ${session.mostCommonWords.join(', ')}
   - Analyze the words to identify the dominant theme (e.g., casual conversation, technical terms, academic language)
   - If the theme is inappropriate or too narrow: "Limited vocabulary in [specific identified theme] terms"
   - Example: If most words are casual/filler words: "Limited vocabulary in formal communication terms"
   - Otherwise: null

5. Filler Words (${session.formality.formalityScore}} instances):
   - 1-5: "Minimal use of filler words"
   - 6-15: "Frequent use of filler words"
   - 16+: "Excessive use of filler words"

6. Formality Score (${session.grammarMistakes.join(', ')}%):
   - 60-79%: "Slightly too informal for the context"
   - 40-59%: "Noticeably too informal"
   - <40%: "Highly inappropriate formality level"
   - ≥80%: null

7. Grammar Mistakes:
   - Analyze these specific sentences for grammar issues:
   ${session.grammarMistakes.join(', ')}
   - Identify the types of grammar mistakes (e.g., subject-verb agreement, tense consistency, pronoun usage)
   - If mistakes found: "Grammar issues: [list of specific types of mistakes found]"
   - Example: "Grammar issues: Subject-verb agreement, past tense usage, pronoun case"
   - If no mistakes: null

8. Transcript Structure & Goal Alignment:
   - Evaluate structure, clarity, and goal alignment
   - If issues found: "Weaknesses in achieving the goal: [specific issues]"
   - Otherwise: null

Please provide feedback in two parts:

1. A comprehensive summary addressing each of the above points in sequence.

2. A JSON object with the following structure:
{
  "part1": "Your detailed natural language feedback here",
  "part2": [
    {"struggle": "value or null for speaking rate"},
    {"struggle": "value or null for vocal variation"},
    {"struggle": "value or null for silent ratio"},
    {"struggle": "value or null for word theme"},
    {"struggle": "value or null for filler words"},
    {"struggle": "value or null for formality score"},
    {"struggle": "value or null for grammar mistakes"},
    {"struggle": "value or null for goal alignment"}
  ]
}
''',
              },
            ],
          },
        ],
        'generationConfig': {
          'responseMimeType': 'application/json',
          'responseSchema': {
            'type': 'object',
            'properties': {
              'part1': {'type': 'string'},
              'part2': {
                'type': 'array',
                'items': {
                  'type': 'object',
                  'properties': {
                    'struggle': {'type': 'string'},
                  },
                },
              },
            },
          },
        },
      };

      // Gemini client library to prompt using JSON
      final response = await _geminiInstance.prompt(
        parts: [Part.text(jsonEncode(prompt))],
      );
      // Log the response
      Logger().i('Gemini response: $response');

      // Check if the response is null or empty
      if (response == null || response.output == null || response.output!.isEmpty) {
        throw Exception('Gemini returned empty response');
      }

      // Parse the JSON response
      final feedbackText = response.output!;

      Logger().i(
        'Gemini response: ${feedbackText.substring(7, feedbackText.length - 4)}',
      );

      final feedbackJson = jsonDecode(feedbackText.substring(7, feedbackText.length - 4));
      final part1 = feedbackJson['part_1'];
      final strugglesJson = feedbackJson['part_2'];
      final struggles = Struggles(
        speakingRate: strugglesJson[0]['struggle'],
        vocalVariation: strugglesJson[1]['struggle'],
        silentRatio: strugglesJson[2]['struggle'],
        wordTheme: strugglesJson[3]['struggle'],
        fillerWords: strugglesJson[4]['struggle'],
        formalityScore: strugglesJson[5]['struggle'],
        grammarMistakes: strugglesJson[6]['struggle'],
        goalAlignment: strugglesJson[7]['struggle'],
      );

      // Return the structured feedback
      return SpeechFeedback(part1: part1, part2: struggles);
    } catch (e) {
      Logger().e(e);
      // Log the error and return a user-friendly message
      throw Exception('Failed to generate speaking feedback. Please try again later.');
    }
  }
}
