import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wishlist_model.g.dart';

@JsonSerializable()
class WishlistUpdateDeleteModel extends Equatable {
  final List<String> productIds;

  const WishlistUpdateDeleteModel({
    required this.productIds,
  });

  factory WishlistUpdateDeleteModel.fromJson(Map<String, dynamic> json) =>
      _$WishlistUpdateDeleteModelFromJson(json);

  Map<String, dynamic> toJson() => _$WishlistUpdateDeleteModelToJson(this);

  @override
  List<Object> get props => [productIds];
}
