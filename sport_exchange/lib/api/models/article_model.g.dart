// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      id: json['id'] as String,
      name: json['name'] as String,
      text: json['text'] as String,
      createdAt: json['createdAt'] as String,
      pictureUrl: json['pictureUrl'] as String,
      categories:
          (json['categories'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'text': instance.text,
      'createdAt': instance.createdAt,
      'pictureUrl': instance.pictureUrl,
      'categories': instance.categories,
    };
