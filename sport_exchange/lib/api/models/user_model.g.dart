// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      login: json['login'] as String,
      email: json['email'] as String,
      lastName: json['lastName'] as String,
      firstName: json['firstName'] as String,
      balance: json['balance'] as int,
      phoneNumber: json['phoneNumber'] as String,
      address: json['address'] as String,
      pictureUrl: json['pictureUrl'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'email': instance.email,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'balance': instance.balance,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'pictureUrl': instance.pictureUrl,
    };

UserUpdateModel _$UserUpdateModelFromJson(Map<String, dynamic> json) =>
    UserUpdateModel(
      login: json['login'] as String?,
      email: json['email'] as String?,
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$UserUpdateModelToJson(UserUpdateModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'email': instance.email,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
