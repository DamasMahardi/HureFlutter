import 'rukun_warga_items.dart';

class RukunWargaList {
  int totalCount;
  List<RukunWargaItems> items;

  RukunWargaList({this.totalCount, this.items});

  factory RukunWargaList.fromJson(Map<String, dynamic> json) {
    return RukunWargaList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<RukunWargaItems>((v) => new RukunWargaItems.fromJson(v))
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
