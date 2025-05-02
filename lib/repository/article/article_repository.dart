import 'package:speakup_final/model/article/article.dart';
import 'package:speakup_final/sanity.dart';

class ArticleRepository {
  /// Fetches all articles from Sanity
  Future<List<Article>> getAllArticles() async {
    const query = '''*[_type == "article"] {
      title,
      author,
      datetime,
      content,
      "coverImage": coverImage.asset->url,
      "coverImageAlt": coverImage.alt
    }''';

    final response = await client.fetch(query);

    return (response.result as List)
        .map(
          (article) => Article.fromJson({
            'title': article['title'] ?? '',
            'author': article['author'] ?? '',
            'datetime': article['datetime'] ?? DateTime.now().toIso8601String(),
            'content': article['content'],
            'coverImage': article['coverImage'],
            'coverImageAlt': article['coverImageAlt'],
          }),
        )
        .toList();
  }
}
