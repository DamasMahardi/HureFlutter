class SaasTenantDto {
  bool success;
  String tenantId;
  String name;

  SaasTenantDto({this.success, this.tenantId, this.name});

  SaasTenantDto.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    tenantId = json['tenantId'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['tenantId'] = this.tenantId;
    data['name'] = this.name;
    return data;
  }
}
