import 'package:equatable/equatable.dart';

/*
Extends `Equatable` for easy comparisons.
 */
class ArticleEntity extends Equatable {
  final int? id;
  final int? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity({this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.content,
    this.publishedAt});

  @override
  // Getter method that will return list of objects and see if they are equal
  List<Object?> get props {
    return [
      id,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content
    ];
  }
