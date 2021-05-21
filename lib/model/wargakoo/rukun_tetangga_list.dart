import 'rukun_tetangga_items.dart';

class RukunTetanggaList {
  int totalCount;
  List<RukunTetanggaItems> items;

  RukunTetanggaList({this.totalCount, this.items});

  factory RukunTetanggaList.fromJson(Map<String, dynamic> json) {
    return RukunTetanggaList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<RukunTetanggaItems>(
                  (v) => new RukunTetanggaItems.fromJson(v))
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
