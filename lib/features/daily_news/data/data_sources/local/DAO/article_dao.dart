import 'package:floor/floor.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';

abstract class ArticleDao {
  @Insert()
  Future<void> insertArticle(ArticelModel article);

  @delete
  Future<void> deleteArticle(ArticelModel article);

  @Query('SELECT * FROM article')
  Future<List<ArticelModel>> getAllArticles();
}
