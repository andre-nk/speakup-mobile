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
Please analyze this speech transcript and provide detailed feedback based on the following parameters. For Part 1, provide a comprehensive analysis addressing each point in detail:

1. Speaking Rate ${session.calculateOverallWPM()} WPM):
   - Analyze the current speaking rate
   - Compare it to the ideal range (120-150 WPM)
   - Provide specific recommendations for improvement
   - Explain the impact on audience engagement

2. Vocal Variation (${session.pitchResult.pitchAnalysis.isMonotone ? 'monotone' : 'not monotone'}): 
   - Evaluate the current level of vocal variation
   - Analyze the impact of being ${session.pitchResult.pitchAnalysis.isMonotone ? 'monotone' : 'not monotone'}
   - Explain how vocal variation affects message delivery

3. Pause Usage (Silent Ratio: ${session.pitchResult.silentRatio}):
   - Analyze the current pause usage
   - Evaluate the effectiveness of pauses
   - Provide specific recommendations for strategic pausing
   - Explain how pauses can enhance message delivery

4. Vocabulary Diversity:
   - Analyze the use of most common words: ${session.mostCommonWords.join(', ')}
   - Provide specific synonyms and alternatives for each word
   - Explain how vocabulary diversity affects message clarity

5. Formality Level (Score: ${session.formality.formalityScore}):
   - Analyze the current formality level
   - Evaluate its appropriateness for the context
   - Explain how formality affects audience connection

6. Grammar Issues:
   - Analyze the grammar mistakes: ${session.grammarMistakes.join(', ')}
   - Provide specific corrections and explanations
   - Explain the impact on message clarity
   - Offer techniques for improvement

7. Transcript Analysis:
   ${session.transcript}
   - Evaluate the structure and flow
   - Analyze the effectiveness of key points
   - Suggest improvements for content organization

Please provide feedback in two parts:

1. A comprehensive, detailed analysis addressing each of the above points in sequence. Each point should be thoroughly analyzed with specific examples, recommendations, and explanations of impact.

2. A structured analysis of the three main struggles the speaker faces, formatted as a JSON object with the following structure:
{
  "part_1": "Your detailed natural language feedback here",
  "part_2": {
    "struggles": {
      "issue_1": "A short sentence describing just the name of the English material for the first biggest main struggle. (Be Specific)",
      "issue_2": "A short sentence describing just the name of the English material for the second biggest main struggle. (Be Specific)",
      "issue_3": "A short sentence describing just the name of the English material for the third biggest main struggle. (Be Specific)"
    }
  }
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
              'part_1': {'type': 'string'},
              'part_2': {
                'type': 'object',
                'properties': {
                  'struggles': {
                    'type': 'object',
                    'properties': {
                      'issue_1': {'type': 'string'},
                      'issue_2': {'type': 'string'},
                      'issue_3': {'type': 'string'},
                    },
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

      Logger().i('Gemini response: ${feedbackText.substring(7, feedbackText.length - 4)}');

      final feedbackJson = jsonDecode(feedbackText.substring(7, feedbackText.length - 4));
      final part1 = feedbackJson['part_1'];
      final struggles = Struggles(
        issue1: feedbackJson['part_2']['struggles']['issue_1'],
        issue2: feedbackJson['part_2']['struggles']['issue_2'],
        issue3: feedbackJson['part_2']['struggles']['issue_3'],
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
