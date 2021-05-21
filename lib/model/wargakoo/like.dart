class Like {
  String timelinePostId;
  String wargaId;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Like({
    this.timelinePostId,
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

  factory Like.fromJson(Map<String, dynamic> json) {
    return Like(
      timelinePostId: json['timelinePostId'] as String,
      wargaId: json['wargaId'] as String,
      isDeleted: json['isDeleted'] as bool,
      deleterId: json['deleterId'] as String,
      deletionTime: json['deletionTime'] as String,
      lastModificationTime: json['lastModificationTime'] as String,
      lastModifierId: json['lastModifierId'] as String,
      creationTime: json['creationTime'] as String,
      creatorId: json['creatorId'] as String,
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'timelinePostId': timelinePostId,
      'wargaId': wargaId,
      'isDeleted': isDeleted,
      'deleterId': deleterId,
      'deletionTime': deletionTime,
      'lastModificationTime': lastModificationTime,
      'lastModifierId': lastModifierId,
      'creationTime': creationTime,
      'creatorId': creatorId,
      'id': id,
    };
  }
}
