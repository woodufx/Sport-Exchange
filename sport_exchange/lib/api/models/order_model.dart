import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sport_exchange/api/models/product_model.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel extends Equatable {
  final String id;
  final List<OrderProductModel> products;
  final int amount;
  final String createdAt;
  final String status;

  const OrderModel({
    required this.id,
    required this.products,
    required this.amount,
    required this.createdAt,
    required this.status,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  @override
  List<Object> get props => [id, products, amount, createdAt, status];
}

@JsonSerializable()
class OrderProductModel extends Equatable {
  final ProductModel product;
  final String size;
  final int amount;

  const OrderProductModel({
    required this.product,
    required this.size,
    required this.amount,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProductModelToJson(this);

  @override
  List<Object> get props => [product, size, amount];
}
