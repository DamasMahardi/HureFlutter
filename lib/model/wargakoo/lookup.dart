import 'lookup_items.dart';

class Lookup {
  int totalCount;
  List<LookupItems> items;

  Lookup({this.totalCount, this.items});

  factory Lookup.fromJson(Map<String, dynamic> json) {
    return Lookup(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<LookupItems>((v) => new LookupItems.fromJson(v))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
