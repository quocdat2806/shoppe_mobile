// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      refreshToken: json['refreshToken'] as String?,
      token: json['token'] as String?,
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      loginMethod: $enumDecodeNullable(_$LoginEnumMap, json['loginMethod']),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'refreshToken': instance.refreshToken,
      'token': instance.token,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'loginMethod': _$LoginEnumMap[instance.loginMethod],
    };

const _$LoginEnumMap = {
  Login.sms: 'sms',
  Login.email: 'email',
  Login.google: 'google',
  Login.shoppe: 'shoppe',
  Login.facebook: 'facebook',
};
