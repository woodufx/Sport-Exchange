// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishlistUpdateDeleteModel _$WishlistUpdateDeleteModelFromJson(
        Map<String, dynamic> json) =>
    WishlistUpdateDeleteModel(
      productIds: (json['productIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$WishlistUpdateDeleteModelToJson(
        WishlistUpdateDeleteModel instance) =>
    <String, dynamic>{
      'productIds': instance.productIds,
    };
