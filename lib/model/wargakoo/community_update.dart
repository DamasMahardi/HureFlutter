class CommunityUpdate {
  String code;
  String name;
  String description;
  String logo;
  String bannerImage;
  String terms;
  String dateStart;
  bool isActive;
  bool isBanned;
  String bannedReason;
  bool isInvite;

  CommunityUpdate(
      {this.code,
      this.name,
      this.description,
      this.logo,
      this.bannerImage,
      this.terms,
      this.dateStart,
      this.isActive,
      this.isBanned,
      this.bannedReason,
      this.isInvite});

  factory CommunityUpdate.fromJson(Map<String, dynamic> json) {
    return CommunityUpdate(
      code: json['code'],
      name: json['name'],
      description: json['description'],
      logo: json['logo'],
      bannerImage: json['bannerImage'],
      terms: json['terms'],
      dateStart: json['dateStart'],
      isActive: json['isActive'],
      isBanned: json['isBanned'],
      bannedReason: json['bannedReason'],
      isInvite: json['isInvite'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['logo'] = this.logo;
    data['bannerImage'] = this.bannerImage;
    data['terms'] = this.terms;
    data['dateStart'] = this.dateStart;
    data['isActive'] = this.isActive;
    data['isBanned'] = this.isBanned;
    data['bannedReason'] = this.bannedReason;
    data['isInvite'] = this.isInvite;
    return data;
  }
}
