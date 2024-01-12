import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sport_exchange/api/models/product_model.dart';

part 'bucket_model.g.dart';

@JsonSerializable()
class BucketModel extends Equatable {
  final ProductModel product;
  final String size;
  final int amount;

  const BucketModel({
    required this.product,
    required this.size,
    required this.amount,
  });

  factory BucketModel.fromJson(Map<String, dynamic> json) =>
      _$BucketModelFromJson(json);

  Map<String, dynamic> toJson() => _$BucketModelToJson(this);

  @override
  List<Object> get props => [product, size, amount];
}

@JsonSerializable()
class BucketUpdateModel extends Equatable {
  final String productId;
  final String size;
  final int amount;

  const BucketUpdateModel({
    required this.productId,
    required this.size,
    required this.amount,
  });

  factory BucketUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$BucketUpdateModelFromJson(json);

  Map<String, dynamic> toJson() => _$BucketUpdateModelToJson(this);

  @override
  List<Object> get props => [productId, size, amount];
}

@JsonSerializable()
class BucketDeleteModel extends Equatable {
  final String productId;
  final int amount;

  const BucketDeleteModel({
    required this.productId,
    required this.amount,
  });

  factory BucketDeleteModel.fromJson(Map<String, dynamic> json) =>
      _$BucketDeleteModelFromJson(json);

  Map<String, dynamic> toJson() => _$BucketDeleteModelToJson(this);

  @override
  List<Object> get props => [productId, amount];
}
