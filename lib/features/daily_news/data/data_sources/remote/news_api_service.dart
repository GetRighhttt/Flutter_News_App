import 'package:dio/dio.dart';
import 'package:news_app/core/constants/constants.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import '../../models/article.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseUrl)
abstract class NewsApiService {
  static const String topHeadlines = 'top-headlines';
  static const String everything = 'everything';

  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/$topHeadlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles(
      {@Query("apiKey") String? apiKey,
      @Query("country") String? country,
      @Query("category") String? category});

  @GET('/$everything')
  Future<HttpResponse<List<ArticleModel>>> getBasketballArticles(
      {@Query('category') String? category, @Query('apiKey') String? apiKey});
}
