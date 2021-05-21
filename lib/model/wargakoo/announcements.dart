class Announcements {
  String title;
  String content;
  String image;
  bool isActive;
  bool isBroadcast;
  bool isPushNotification;
  String rukunTetanggaId;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Announcements(
      {this.title,
      this.content,
      this.image,
      this.isActive,
      this.isBroadcast,
      this.isPushNotification,
      this.rukunTetanggaId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  factory Announcements.fromJson(Map<String, dynamic> json) {
    return Announcements(
      title: json['title'],
      content: json['content'],
      image: json['image'],
      isActive: json['isActive'],
      isBroadcast: json['isBroadcast'],
      isPushNotification: json['isPushNotification'],
      rukunTetanggaId: json['rukunTetanggaId'],
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
    data['title'] = this.title;
    data['content'] = this.content;
    data['image'] = this.image;
    data['isActive'] = this.isActive;
    data['isBroadcast'] = this.isBroadcast;
    data['isPushNotification'] = this.isPushNotification;
    data['rukunTetanggaId'] = this.rukunTetanggaId;
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
