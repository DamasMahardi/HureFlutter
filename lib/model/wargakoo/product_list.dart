import 'product_items.dart';

class ProductList {
  int totalCount;
  List<ProductItems> items;

  ProductList({this.totalCount, this.items});

  factory ProductList.fromJson(Map<String, dynamic> json) {
    return ProductList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<ProductItems>((v) => new ProductItems.fromJson(v))
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
