import 'package:dio/dio.dart';
import 'package:news_app/core/constants/constants.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import '../../models/article.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles(
      {@Query("country") String? country,
      @Query("category") String? category,
      @Query("apiKey") String? apiKey});

  @GET('/everything')
  Future<HttpResponse<List<ArticleModel>>> getBasketballArticles(
      {@Query('category') String? category, @Query('apiKey') String? apiKey});
}
