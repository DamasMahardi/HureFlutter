class LookupItems {
  String id;
  String displayName;

  LookupItems({this.id, this.displayName});

  factory LookupItems.fromJson(Map<String, dynamic> json) {
    return LookupItems(
      id: json['id'],
      displayName: json['displayName'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['displayName'] = this.displayName;
    return data;
  }
}
