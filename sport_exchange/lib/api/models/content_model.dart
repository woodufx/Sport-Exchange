import 'package:json_annotation/json_annotation.dart';

part 'content_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ContentModel<T> {
  
  T content;

  ContentModel({required this.content});

  @override
  factory ContentModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ContentModelFromJson(json, fromJsonT);
}
