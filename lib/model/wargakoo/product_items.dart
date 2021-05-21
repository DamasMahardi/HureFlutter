import 'product.dart';
import 'product_category.dart';
import 'business.dart';

class ProductItems {
  Product product;
  ProductCategory productCategory;
  Business business;

  ProductItems({this.product, this.productCategory, this.business});

  factory ProductItems.fromJson(Map<String, dynamic> json) {
    return ProductItems(
      product: json['product'] != null
          ? new Product.fromJson(json['product'])
          : null,
      productCategory: json['productCategory'] != null
          ? new ProductCategory.fromJson(json['productCategory'])
          : null,
      business: json['business'] != null
          ? new Business.fromJson(json['business'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    if (this.productCategory != null) {
      data['productCategory'] = this.productCategory.toJson();
    }
    if (this.business != null) {
      data['business'] = this.business.toJson();
    }
    return data;
  }
}
