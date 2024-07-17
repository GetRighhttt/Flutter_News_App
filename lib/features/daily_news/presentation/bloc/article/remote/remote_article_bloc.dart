import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/usecases/get_article.dart';
import '../../../../domain/usecases/get_basketball.dart';

class RemoteArticlesBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArticleUseCase _getArticlesUseCase;
  final GetBasketballUseCase _getBasketballUseCase;

  RemoteArticlesBloc(this._getArticlesUseCase, this._getBasketballUseCase)
      : super(const RemoteArticleLoading()) {
    on<GetArticles>(onGetArticles);
  }

  void onGetArticles(GetArticles event, Emitter<RemoteArticleState> emit) {}
}
