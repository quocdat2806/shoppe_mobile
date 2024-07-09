import 'package:json_annotation/json_annotation.dart';
import 'package:shoppe/core/enums/login.dart';
part 'user_model.g.dart';
@JsonSerializable()

class UserModel{
  late final String? name;
  late final String? phone;
  late final String? refreshToken;
  late final String? token;
  late final String? email;
  late  final String? avatarUrl;
  late final Login? loginMethod;
  UserModel({
    this.name,
    this.phone,
    this.refreshToken,
    this.token,
    this.email,
    this.avatarUrl,
    this.loginMethod
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}