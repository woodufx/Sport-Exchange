import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String id;
  final String name;
  final String description;
  final List<String> pictureUrls;
  final int price;
  final int ratingPercent;
  final int ratingNumber;
  final int category;
  final List<String> sizes;

  const ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureUrls,
    required this.price,
    required this.ratingPercent,
    required this.ratingNumber,
    required this.category,
    required this.sizes,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
