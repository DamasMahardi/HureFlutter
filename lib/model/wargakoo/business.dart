class Business {
  String name;
  int type;
  bool hasOffice;
  String address;
  String latitude;
  String longitude;
  String phone1;
  String phone2;
  String email;
  String website;
  String description;
  bool isCustomerVisit;
  bool isDelivery;
  bool is24Hours;
  String logo;
  String bannerImage;
  bool isActive;
  bool isClosed;
  bool isTemporaryClosed;
  bool isPermanentlyClosed;
  bool isBanned;
  bool isApproved;
  bool isVerified;
  String bannedReason;
  int rating;
  bool isCashOnDelivery;
  int minimumOrder;
  int order;
  String approvedBy;
  String approvedDateTime;
  String verifiedBy;
  String verifiedDateTime;
  String bannedBy;
  String bannedDateTime;
  int banRequestCounter;
  String businessCategoryId;
  String wargaId;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Business({
    this.name,
    this.type,
    this.hasOffice,
    this.address,
    this.latitude,
    this.longitude,
    this.phone1,
    this.phone2,
    this.email,
    this.website,
    this.description,
    this.isCustomerVisit,
    this.isDelivery,
    this.is24Hours,
    this.logo,
    this.bannerImage,
    this.isActive,
    this.isClosed,
    this.isTemporaryClosed,
    this.isPermanentlyClosed,
    this.isBanned,
    this.isApproved,
    this.isVerified,
    this.bannedReason,
    this.rating,
    this.isCashOnDelivery,
    this.minimumOrder,
    this.order,
    this.approvedBy,
    this.approvedDateTime,
    this.verifiedBy,
    this.verifiedDateTime,
    this.bannedBy,
    this.bannedDateTime,
    this.banRequestCounter,
    this.businessCategoryId,
    this.wargaId,
    this.isDeleted,
    this.deleterId,
    this.deletionTime,
    this.lastModificationTime,
    this.lastModifierId,
    this.creationTime,
    this.creatorId,
    this.id,
  });

  factory Business.fromJson(Map<String, dynamic> json) {
    return Business(
      name: json['name'],
      type: json['type'],
      hasOffice: json['hasOffice'],
      address: json['address'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      phone1: json['phone1'],
      phone2: json['phone2'],
      email: json['email'],
      website: json['website'],
      description: json['description'],
      isCustomerVisit: json['isCustomerVisit'],
      isDelivery: json['isDelivery'],
      is24Hours: json['is24Hours'],
      logo: json['logo'],
      bannerImage: json['bannerImage'],
      isActive: json['isActive'],
      isClosed: json['isClosed'],
      isTemporaryClosed: json['isTemporaryClosed'],
      isPermanentlyClosed: json['isPermanentlyClosed'],
      isBanned: json['isBanned'],
      isApproved: json['isApproved'],
      isVerified: json['isVerified'],
      bannedReason: json['bannedReason'],
      rating: json['rating'],
      isCashOnDelivery: json['isCashOnDelivery'],
      minimumOrder: json['minimumOrder']?.toInt(),
      order: json['order']?.toInt(),
      approvedBy: json['approvedBy'],
      approvedDateTime: json['approvedDateTime'],
      verifiedBy: json['verifiedBy'],
      verifiedDateTime: json['verifiedDateTime'],
      bannedBy: json['bannedBy'],
      bannedDateTime: json['bannedDateTime'],
      banRequestCounter: json['banRequestCounter'],
      businessCategoryId: json['businessCategoryId'],
      wargaId: json['wargaId'],
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
    data['name'] = this.name;
    data['type'] = this.type;
    data['hasOffice'] = this.hasOffice;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['phone1'] = this.phone1;
    data['phone2'] = this.phone2;
    data['email'] = this.email;
    data['website'] = this.website;
    data['description'] = this.description;
    data['isCustomerVisit'] = this.isCustomerVisit;
    data['isDelivery'] = this.isDelivery;
    data['is24Hours'] = this.is24Hours;
    data['logo'] = this.logo;
    data['bannerImage'] = this.bannerImage;
    data['isActive'] = this.isActive;
    data['isClosed'] = this.isClosed;
    data['isTemporaryClosed'] = this.isTemporaryClosed;
    data['isPermanentlyClosed'] = this.isPermanentlyClosed;
    data['isBanned'] = this.isBanned;
    data['isApproved'] = this.isApproved;
    data['isVerified'] = this.isVerified;
    data['bannedReason'] = this.bannedReason;
    data['rating'] = this.rating;
    data['isCashOnDelivery'] = this.isCashOnDelivery;
    data['minimumOrder'] = this.minimumOrder;
    data['order'] = this.order;
    data['approvedBy'] = this.approvedBy;
    data['approvedDateTime'] = this.approvedDateTime;
    data['verifiedBy'] = this.verifiedBy;
    data['verifiedDateTime'] = this.verifiedDateTime;
    data['bannedBy'] = this.bannedBy;
    data['bannedDateTime'] = this.bannedDateTime;
    data['banRequestCounter'] = this.banRequestCounter;
    data['businessCategoryId'] = this.businessCategoryId;
    data['wargaId'] = this.wargaId;
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
