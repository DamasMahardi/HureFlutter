// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse()
    ..rememberMe = json['rememberMe'] as bool ?? true
    ..tenantId = json['tenantId'] as String
    ..userNameOrEmailAddress = json['userNameOrEmailAddress'] as String
    ..password = json['password'] as String;
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'rememberMe': instance.rememberMe,
      'tenantId': instance.tenantId,
      'userNameOrEmailAddress': instance.userNameOrEmailAddress,
      'password': instance.password,
    };
