// To parse this JSON data, do
//
//     final tenantResponse = tenantResponseFromJson(jsonString);

import 'dart:convert';

TenantResponse tenantResponseFromJson(String str) =>
    TenantResponse.fromJson(json.decode(str));

String tenantResponseToJson(TenantResponse data) => json.encode(data.toJson());

class TenantResponse {
  TenantResponse({
    this.success,
    this.tenantId,
    this.name,
  });

  bool success;
  String tenantId;
  String name;

  factory TenantResponse.fromJson(Map<String, dynamic> json) => TenantResponse(
        success: json["success"],
        tenantId: json["tenantId"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "tenantId": tenantId,
        "name": name,
      };
}
