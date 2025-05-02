part of 'article_cubit.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loading() = _Loading;
  const factory ArticleState.loaded(
    List<Article> recommendations,
  ) = _Loaded;
  const factory ArticleState.error(String message) = _Error;
}
