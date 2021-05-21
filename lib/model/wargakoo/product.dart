class Product {
  String code;
  String name;
  String description;
  bool isRangePrice;
  int priceStart;
  int priceEnd;
  String photo;
  bool isActive;
  bool isOutOfStock;
  bool isDelivery;
  bool isDigital;
  bool isService;
  String productCategoryId;
  String businessId;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Product({
    this.code,
    this.name,
    this.description,
    this.isRangePrice,
    this.priceStart,
    this.priceEnd,
    this.photo,
    this.isActive,
    this.isOutOfStock,
    this.isDelivery,
    this.isDigital,
    this.isService,
    this.productCategoryId,
    this.businessId,
    this.isDeleted,
    this.deleterId,
    this.deletionTime,
    this.lastModificationTime,
    this.lastModifierId,
    this.creationTime,
    this.creatorId,
    this.id,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      code: json['code'],
      name: json['name'],
      description: json['description'],
      isRangePrice: json['isRangePrice'],
      priceStart: json['priceStart'],
      priceEnd: json['priceEnd'],
      photo: json['photo'],
      isActive: json['isActive'],
      isOutOfStock: json['isOutOfStock'],
      isDelivery: json['isDelivery'],
      isDigital: json['isDigital'],
      isService: json['isService'],
      productCategoryId: json['productCategoryId'],
      businessId: json['businessId'],
      isDeleted: json['isDeleted'],
      deleterId: json['deleterId'],
      deletionTime: json['deletionTime'],
      lastModificationTime: json['lastModificationTime'],
      lastModifierId: json['lastModifierId'],
      creationTime: json['creationTime'],
      creatorId: json['creatorId'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['isRangePrice'] = this.isRangePrice;
    data['priceStart'] = this.priceStart;
    data['priceEnd'] = this.priceEnd;
    data['photo'] = this.photo;
    data['isActive'] = this.isActive;
    data['isOutOfStock'] = this.isOutOfStock;
    data['isDelivery'] = this.isDelivery;
    data['isDigital'] = this.isDigital;
    data['isService'] = this.isService;
    data['productCategoryId'] = this.productCategoryId;
    data['businessId'] = this.businessId;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}
