import 'package:news_app/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel(
      {id, author, title, description, url, urlToImage, content, publishedAt});

  /*
  Creates a factory method to map json data.
   */
  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
        author: map['author'] ?? "",
        title: map['title'] ?? "",
        description: map['description'] ?? "",
        url: map['url'] ?? "",
        urlToImage: map['urlToImage'] ?? "",
        publishedAt: map['publishedAt'] ?? "",
        content: map['content'] ?? "");
  }
}

/*
We need a model class because the domain layer must be independent of itself
and not depend on other layers in clean architecture
 */