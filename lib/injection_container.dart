import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/features/daily_news/data/repositoryImpl/article_repo_impl.dart';
import 'package:news_app/features/daily_news/domain/repository/article_repo.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_basketball.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  /*
  Dependencies
   */
  s1.registerSingleton<Dio>(Dio());
  s1.registerSingleton<NewsApiService>(NewsApiService(s1()));
  s1.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(s1()));
  s1.registerSingleton<GetArticleUseCase>(GetArticleUseCase(s1()));
  s1.registerSingleton<GetBasketballUseCase>(GetBasketballUseCase(s1()));

  /*
  BloC shouldn't be registered as a singleton because we need to update state
  each time it is called so instead we create a factory.
   */
  s1.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(s1(), s1()));
}
