abstract class RemoteArticleEvent {
  const RemoteArticleEvent();
}

class GetArticles extends RemoteArticleEvent {
  const GetArticles();
}

class GetBasketballs extends RemoteArticleEvent {
  const GetBasketballs();
}