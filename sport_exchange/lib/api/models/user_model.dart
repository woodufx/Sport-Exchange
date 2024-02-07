import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final String id;
  final String login;
  final String email;
  final String lastName;
  final String firstName;
  final int balance;
  final String phoneNumber;
  final String address;
  final String pictureUrl;

  const UserModel({
    required this.id,
    required this.login,
    required this.email,
    required this.lastName,
    required this.firstName,
    required this.balance,
    required this.phoneNumber,
    required this.address,
    required this.pictureUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object> get props => [
        id,
        login,
        email,
        lastName,
        firstName,
        balance,
        phoneNumber,
        address,
        pictureUrl
      ];
}

@JsonSerializable()
class UserUpdateModel extends Equatable {
  final String? login;
  final String? email;
  final String? lastName;
  final String? firstName;
  final String? password;
  final String? phoneNumber;
  final String? address;

  const UserUpdateModel({
    this.login,
    this.email,
    this.lastName,
    this.firstName,
    this.password,
    this.phoneNumber,
    this.address,
  });

  factory UserUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserUpdateModelToJson(this);

  @override
  List<Object> get props => [];
}
