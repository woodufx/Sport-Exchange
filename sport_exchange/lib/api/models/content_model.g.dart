// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentModel<T> _$ContentModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ContentModel<T>(
      content: fromJsonT(json['content']),
    );

Map<String, dynamic> _$ContentModelToJson<T>(
  ContentModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'content': toJsonT(instance.content),
    };
