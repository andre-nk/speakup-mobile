import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:speakup_final/model/session_summary/session_summary.dart';

class GeminiClient {
  final String apiKey;
  final String baseUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent';
  final int maxRetries = 3;
  final Duration retryDelay = Duration(seconds: 2);
  
  GeminiClient({required this.apiKey});

  Future<SpeechFeedback> generateSpeechFeedback(SpeechAnalysisFeedback analysis) async {
    int retryCount = 0;
    while (retryCount < maxRetries) {
      try {
        final response = await http.post(
          Uri.parse('$baseUrl?key=$apiKey'),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            'contents': [
              {
                'parts': [
                  {'text': '''
Please analyze this speech transcript and provide feedback based on the following parameters:

1. Speaking Rate (${analysis.wordsPerMinute} WPM):
   - If < 120: "Speaking too slowly"
   - If > 150: "Speaking too fast"
   - If 120-150: null

2. Vocal Variation (${analysis.isMonotone ? 'monotone' : 'not monotone'}):
   - If monotone: "Lack of pitch variation and rhythm"
   - Otherwise: null

3. Silent Ratio (${analysis.silentRatio}):
   - If > 0.3: "Too much silence; possibly due to hesitation or low volume"
   - Otherwise: null

4. Word Theme Analysis:
   - Most common words: ${analysis.mostCommonWords.join(', ')}
   - Analyze the words to identify the dominant theme (e.g., casual conversation, technical terms, academic language)
   - If the theme is inappropriate or too narrow: "Limited vocabulary in [specific identified theme] terms"
   - Example: If most words are casual/filler words: "Limited vocabulary in formal communication terms"
   - Otherwise: null

5. Filler Words (${analysis.fillerWords} instances):
   - 1-5: "Minimal use of filler words"
   - 6-15: "Frequent use of filler words"
   - 16+: "Excessive use of filler words"

6. Formality Score (${analysis.formalityScore}%):
   - 60-79%: "Slightly too informal for the context"
   - 40-59%: "Noticeably too informal"
   - <40%: "Highly inappropriate formality level"
   - ≥80%: null

7. Grammar Mistakes:
   - Analyze these specific sentences for grammar issues:
   ${analysis.grammarMistakes.map((mistake) => "- $mistake").join('\n')}
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
'''}
                ]
              }
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
                        'struggle': {'type': 'string'}
                      }
                    }
                  }
                }
              }
            }
          }),
        );

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          final feedbackText = data['candidates'][0]['content']['parts'][0]['text'];
          final feedbackJson = jsonDecode(feedbackText);
          
          final struggles = feedbackJson['part2'];
          
          return SpeechFeedback(
            part1: feedbackJson['part1'],
            part2: Struggles(
              speakingRate: struggles[0]['struggle'],
              vocalVariation: struggles[1]['struggle'],
              silentRatio: struggles[2]['struggle'],
              wordTheme: struggles[3]['struggle'],
              fillerWords: struggles[4]['struggle'],
              formalityScore: struggles[5]['struggle'],
              grammarMistakes: struggles[6]['struggle'],
              goalAlignment: struggles[7]['struggle'],
            ),
          );
        } else if (response.statusCode == 503) {
          retryCount++;
          await Future.delayed(retryDelay);
          continue;
        } else {
          throw Exception('Failed to generate content: ${response.statusCode}');
        }
      } catch (e) {
        if (retryCount < maxRetries - 1) {
          retryCount++;
          await Future.delayed(retryDelay);
          continue;
        }
        rethrow;
      }
    }
    throw Exception('Failed to generate content after $maxRetries attempts');
  }
}