import 'package:news_app/features/daily_news/data/models/article.dart';
import 'package:news_app/features/daily_news/domain/repository/article_repo.dart';

import '../../../../core/resources/data_state.dart';

class ArticleRepositoryImpl extends ArticleRepository {

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement API response
    throw UnimplementedError("error");
  }
}