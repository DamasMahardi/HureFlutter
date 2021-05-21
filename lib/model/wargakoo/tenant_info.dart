class TenantInfo {
  String _key;
  dynamic _value;

  String get key => _key;
  dynamic get value => _value;

  TenantInfo({
      String key, 
      dynamic value}){
    _key = key;
    _value = value;
}

  TenantInfo.fromJson(dynamic json) {
    _key = json["key"];
    _value = json["value"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["key"] = _key;
    map["value"] = _value;
    return map;
  }

}