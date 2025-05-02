import 'package:logger/web.dart';
import 'package:speakup_final/model/exercise/exercise.dart';
import 'package:speakup_final/sanity.dart';

class ExerciseRepository {
  Future<Exercise?> getFirstExerciseByLevel(ExerciseLevel level) async {
    try {
      // Convert enum value to string for the query
      final levelValue = level.toString().split('.').last;

      // Build GROQ query to find the first exercise matching the level, ordered by sequence
      final query = '''
        *[_type == "exercise" && level == "$levelValue"] | order(sequence asc) [0] {
          "id": _id,
          sequence,
          title,
          estimatedDuration,
          level,
          instructions,
          "relatedMaterialIds": relatedMaterials[]->._id
        }
      ''';

      // Execute query against Sanity
      final response = await client.fetch(query);

      // Create exercise object from response
      return Exercise.fromJson(response.result);
    } catch (e) {
      Logger().e('Error fetching exercise by level: $e');
      rethrow;
    }
  }
}
