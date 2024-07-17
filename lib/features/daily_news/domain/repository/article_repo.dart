import '../../../../core/resources/data_state.dart';
import '../entities/article.dart';

abstract class ArticleRepository {
  const ArticleRepository();

  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  Future<DataState<List<ArticleEntity>>> getBasketballArticles();
}
