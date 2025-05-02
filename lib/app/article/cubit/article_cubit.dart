import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speakup_final/model/article/article.dart';
import 'package:speakup_final/repository/article/article_repository.dart';

part 'article_state.dart';
part 'article_cubit.freezed.dart';

class ArticleCubit extends Cubit<ArticleState> {
  final ArticleRepository _repository;

  ArticleCubit() : _repository = ArticleRepository(), super(ArticleState.initial());

  Future<void> getAllArticles() async {
    try {
      emit(const ArticleState.loading());

      final recommendations = await _repository.getAllArticles();

      emit(ArticleState.loaded(recommendations));
    } catch (e) {
      emit(ArticleState.error(e.toString()));
    }
  }
}
