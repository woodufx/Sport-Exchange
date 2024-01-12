// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      id: json['id'] as String,
      amount: json['amount'] as int,
      type: json['type'] as String,
      target: json['target'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'type': instance.type,
      'target': instance.target,
      'createdAt': instance.createdAt,
    };

TransactionCreateModel _$TransactionCreateModelFromJson(
        Map<String, dynamic> json) =>
    TransactionCreateModel(
      amount: json['amount'] as int,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TransactionCreateModelToJson(
        TransactionCreateModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
    };
