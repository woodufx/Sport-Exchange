// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      pictureUrls: (json['pictureUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: json['price'] as int,
      ratingPercent: json['ratingPercent'] as int,
      ratingNumber: json['ratingNumber'] as int,
      category: json['category'] as int,
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'pictureUrls': instance.pictureUrls,
      'price': instance.price,
      'ratingPercent': instance.ratingPercent,
      'ratingNumber': instance.ratingNumber,
      'category': instance.category,
      'sizes': instance.sizes,
    };
