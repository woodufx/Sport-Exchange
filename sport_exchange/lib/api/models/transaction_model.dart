import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class TransactionModel extends Equatable {
  final String id;
  final int amount;
  final String type;
  final String target;
  final String createdAt;

  const TransactionModel({
    required this.id,
    required this.amount,
    required this.type,
    required this.target,
    required this.createdAt,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);

  @override
  List<Object> get props => [id, amount, type, target, createdAt];
}

@JsonSerializable()
class TransactionCreateModel extends Equatable {
  final int amount;
  final String? type;

  const TransactionCreateModel({
    required this.amount,
    this.type,
  });

  factory TransactionCreateModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionCreateModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionCreateModelToJson(this);

  @override
  List<Object> get props => [amount];
}
