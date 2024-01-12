// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BucketModel _$BucketModelFromJson(Map<String, dynamic> json) => BucketModel(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      size: json['size'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$BucketModelToJson(BucketModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'size': instance.size,
      'amount': instance.amount,
    };

BucketUpdateModel _$BucketUpdateModelFromJson(Map<String, dynamic> json) =>
    BucketUpdateModel(
      productId: json['productId'] as String,
      size: json['size'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$BucketUpdateModelToJson(BucketUpdateModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'size': instance.size,
      'amount': instance.amount,
    };

BucketDeleteModel _$BucketDeleteModelFromJson(Map<String, dynamic> json) =>
    BucketDeleteModel(
      productId: json['productId'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$BucketDeleteModelToJson(BucketDeleteModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'amount': instance.amount,
    };
