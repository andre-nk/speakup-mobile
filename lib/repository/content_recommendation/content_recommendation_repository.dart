import 'package:speakup_final/model/content_recommendation/content_recommendation.dart';
import 'package:speakup_final/sanity.dart';

class ContentRecommendationRepository {
  /// Fetches all content recommendations from Sanity
  Future<List<ContentRecommendation>> getAllContentRecommendations() async {
    const query = '''*[_type == "contentRecommendation"] {
      title,
      "coverImage": coverImage.asset->url,
      "coverImageAlt": coverImage.alt,
      link
    }''';

    final response = await client.fetch(query);

    return (response.result as List)
        .map(
          (recommendation) => ContentRecommendation.fromJson({
            'title': recommendation['title'] ?? '',
            'link': recommendation['link'] ?? '',
            'coverImage': recommendation['coverImage'],
            'coverImageAlt': recommendation['coverImageAlt'],
          }),
        )
        .toList();
  }
}
