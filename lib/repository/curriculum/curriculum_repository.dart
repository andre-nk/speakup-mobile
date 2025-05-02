import 'package:logger/logger.dart' as logger;
import 'package:speakup_final/model/exercise/exercise.dart';
import 'package:speakup_final/model/level/level.dart';
import 'package:speakup_final/model/material/material.dart';
import 'package:speakup_final/model/section/section.dart';
import 'package:speakup_final/sanity.dart';

/// Repository for handling Curriculum related data operations
class CurriculumRepository {
  final _logger = logger.Logger();

  /// Fetches exercise curriculum data (levels, sections, exercises)
  Future<ExerciseCurriculumData> fetchExerciseCurriculum() async {
    try {
      // 1. Fetch all levels
      final levels = await _fetchLevels();

      // 2. Fetch all sections
      final sections = await _fetchSections();

      // 3. Fetch all exercises
      final exercises = await _fetchExercises();

      // Connect levels to sections and sections to exercises
      final updatedLevels = <Level>[];

      for (final level in levels) {
        final levelSections = <Section>[];

        for (var sectionID in level.sectionIds ?? []) {
          // Find the section by ID
          final sectionIndex = sections.indexWhere((s) => s.id == sectionID);
          _logger.e(sectionIndex);

          if (sectionIndex != -1) {
            final section = sections[sectionIndex];

            // Create a list to hold exercises for this section
            final sectionExercises = <Exercise>[];

            // Find exercises for this section
            for (var exerciseID in section.exerciseIds ?? []) {
              final exerciseIndex = exercises.indexWhere((e) => e.id == exerciseID);
              if (exerciseIndex != -1) {
                final exercise = exercises[exerciseIndex];
                sectionExercises.add(exercise);
              }
            }

            // Sort exercises by sequence
            sectionExercises.sort((a, b) => a.sequence.compareTo(b.sequence));

            // Create a new section with exercises
            final updatedSection = section.copyWith(exerciseObjects: sectionExercises);

            levelSections.add(updatedSection);
          }
        }

        // Sort sections by sequence
        levelSections.sort((a, b) => a.sequence.compareTo(b.sequence));

        // Create a new level with sections
        final updatedLevel = level.copyWith(sectionObjects: levelSections);
        updatedLevels.add(updatedLevel);
      }

      // Sort levels by difficulty (beginner, intermediate, advanced)
      final levelOrder = {'beginner': 0, 'intermediate': 1, 'advanced': 2};

      updatedLevels.sort(
        (a, b) => (levelOrder[a.level] ?? 999).compareTo(levelOrder[b.level] ?? 999),
      );

      // Replace the old lists with updated ones
      levels.clear();
      levels.addAll(updatedLevels);

      return ExerciseCurriculumData(
        levels: levels,
        sections: sections,
        exercises: exercises,
      );
    } catch (e) {
      _logger.e('Error fetching material curriculum: $e');
      rethrow;
    }
  }

  Future<MaterialCurriculumData> fetchMaterialCurriculum() async {
    try {
      // 1. Fetch all levels
      final levels = await _fetchLevels();

      // 2. Fetch all sections
      final sections = await _fetchSections();

      // 3. Fetch all materials
      final materials = await _fetchMaterials();

      // Connect levels to sections and sections to materials
      final updatedLevels = <Level>[];

      for (final level in levels) {
        final levelSections = <Section>[];

        for (var sectionID in level.sectionIds ?? []) {
          // Find the section by ID
          final sectionIndex = sections.indexWhere((s) => s.id == sectionID);
          _logger.e(sectionIndex);

          if (sectionIndex != -1) {
            final section = sections[sectionIndex];

            // Create a list to hold materials for this section
            final sectionMaterials = <Material>[];

            // Find materials for this section
            for (var materialID in section.materialIds ?? []) {
              final materialIndex = materials.indexWhere((m) => m.id == materialID);
              if (materialIndex != -1) {
                final material = materials[materialIndex];
                sectionMaterials.add(material);
              }
            }

            // Sort materials by sequence
            sectionMaterials.sort((a, b) => a.sequence.compareTo(b.sequence));

            // Create a new section with materials
            final updatedSection = section.copyWith(materialObjects: sectionMaterials);

            _logger.e(updatedSection);

            levelSections.add(updatedSection);
          }
        }

        // Sort sections by sequence
        levelSections.sort((a, b) => a.sequence.compareTo(b.sequence));

        // Create a new level with sections
        final updatedLevel = level.copyWith(sectionObjects: levelSections);
        updatedLevels.add(updatedLevel);
      }

      // Sort levels by difficulty (beginner, intermediate, advanced)
      final levelOrder = {'beginner': 0, 'intermediate': 1, 'advanced': 2};

      updatedLevels.sort(
        (a, b) => (levelOrder[a.level] ?? 999).compareTo(levelOrder[b.level] ?? 999),
      );

      // Replace the old lists with updated ones
      levels.clear();
      levels.addAll(updatedLevels);

      return MaterialCurriculumData(
        levels: levels,
        sections: sections,
        materials: materials,
      );
    } catch (e) {
      _logger.e('Error fetching material curriculum: $e');
      rethrow;
    }
  }

  /// Fetches all levels from Sanity
  Future<List<Level>> _fetchLevels() async {
    try {
      const query = '''
        *[_type == "level"] {
          "id": _id,
          title,
          level,
          "sectionIds": sections[]->._id
        }
      ''';

      final response = await client.fetch(query);

      _logger.e(response.result);

      return (response.result as List).map((json) {
        _logger.e(json);
        return Level.fromJson(json);
      }).toList();
    } catch (e) {
      _logger.e('Error fetching levels: $e');
      rethrow;
    }
  }

  /// Fetches all sections from Sanity
  Future<List<Section>> _fetchSections() async {
    try {
      const query = '''
        *[_type == "section"] | order(sequence asc) {
          "id": _id,
          sequence,
          title,
          "materialIds": materials[]->._id,
          "exerciseIds": exercises[]->._id
        }
      ''';

      final response = await client.fetch(query);
      return (response.result as List).map((json) => Section.fromJson(json)).toList();
    } catch (e) {
      _logger.e('Error fetching sections: $e');
      rethrow;
    }
  }

  /// Fetches all exercises from Sanity
  Future<List<Exercise>> _fetchExercises() async {
    try {
      const query = '''
        *[_type == "exercise"] | order(sequence asc) {
          "id": _id,
          sequence,
          title,
          estimatedDuration,
          level,
          instructions,
          "relatedMaterialIds": relatedMaterials[]->._id
        }
      ''';

      final response = await client.fetch(query);
      return (response.result as List).map((json) => Exercise.fromJson(json)).toList();
    } catch (e) {
      _logger.e('Error fetching exercises: $e');
      rethrow;
    }
  }

  Future<List<Material>> _fetchMaterials() async {
    try {
      const query = '''
        *[_type == "material"] | order(sequence asc) {
          "id": _id,
          sequence,
          title,
          subtitle,
          content,
          "relatedExerciseIds": relatedExercises[]->._id
        }
      ''';

      final response = await client.fetch(query);
      return (response.result as List).map((json) => Material.fromJson(json)).toList();
    } catch (e) {
      _logger.e('Error fetching materials: $e');
      rethrow;
    }
  }
}

/// Data class to hold the complete curriculum structure
class CurriculumData {
  final List<Level> levels;
  final List<Section> sections;
  final List<Material> materials;
  final List<Exercise> exercises;

  CurriculumData({
    required this.levels,
    required this.sections,
    required this.materials,
    required this.exercises,
  });
}

/// Data class to hold material curriculum data (levels, sections, materials)
class MaterialCurriculumData {
  final List<Level> levels;
  final List<Section> sections;
  final List<Material> materials;

  MaterialCurriculumData({
    required this.levels,
    required this.sections,
    required this.materials,
  });
}

/// Data class to hold exercise curriculum data (levels, sections, exercises)
class ExerciseCurriculumData {
  final List<Level> levels;
  final List<Section> sections;
  final List<Exercise> exercises;

  ExerciseCurriculumData({
    required this.levels,
    required this.sections,
    required this.exercises,
  });
}
