
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  LoginResponse();

  @JsonKey(defaultValue: true)
  bool rememberMe;

  @JsonKey(name : "tenantId")
  String  tenantId;


  @JsonKey(name : "userNameOrEmailAddress")
  String userNameOrEmailAddress;

  
  @JsonKey(name : "password")
  String password;


  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
