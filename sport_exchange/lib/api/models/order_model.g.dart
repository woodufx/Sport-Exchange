// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: json['id'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => OrderProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amount: json['amount'] as int,
      createdAt: json['createdAt'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'amount': instance.amount,
      'createdAt': instance.createdAt,
      'status': instance.status,
    };

OrderProductModel _$OrderProductModelFromJson(Map<String, dynamic> json) =>
    OrderProductModel(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      size: json['size'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$OrderProductModelToJson(OrderProductModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'size': instance.size,
      'amount': instance.amount,
    };
