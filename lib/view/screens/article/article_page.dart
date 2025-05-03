import 'package:flutter/material.dart';
import 'package:speakup_final/model/article/article.dart';
import 'package:flutter_sanity_portable_text/flutter_sanity_portable_text.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  const ArticlePage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(article.coverImage ?? ""),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(article.title, style: Theme.of(context).textTheme.displayMedium),
            const SizedBox(height: 8),
            Text(article.author, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 16),
            PortableText(
              blocks:
                  article.content!.map((block) {
                    if (block is Map<String, dynamic>) {
                      try {
                        return TextBlockItem.fromJson(block);
                      } catch (e) {
                        // Fallback if JSON parsing fails
                        return TextBlockItem(
                          children: [Span(text: "Error parsing content")],
                        );
                      }
                    }

                    // Fallback for non-map types
                    return TextBlockItem(children: [Span(text: block.toString())]);
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
