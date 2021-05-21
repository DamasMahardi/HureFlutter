import 'warga_items.dart';

class WargaList {
  int totalCount;
  List<WargaItems> items;

  WargaList({this.totalCount, this.items});

  factory WargaList.fromJson(Map<String, dynamic> json) {
    return WargaList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<WargaItems>((v) => new WargaItems.fromJson(v))
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
