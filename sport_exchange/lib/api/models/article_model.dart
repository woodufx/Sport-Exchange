import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  final String id;
  final String name;
  final String text;
  final String createdAt;
  final String pictureUrl;
  final List<int> categories;

  const ArticleModel({
    required this.id,
    required this.name,
    required this.text,
    required this.createdAt,
    required this.pictureUrl,
    required this.categories,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}