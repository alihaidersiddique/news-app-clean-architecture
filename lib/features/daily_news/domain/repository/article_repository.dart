import 'package:news_app_clean_architecture/core/resources/data_state.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // database methods
  Future<List<ArticleEntity>> getSavedArticles();

  Future<void> saveArticel(ArticleEntity article);

  Future<void> removeArticle(ArticleEntity article);
}
