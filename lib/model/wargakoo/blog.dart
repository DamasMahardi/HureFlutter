class Blog {
  String name;
  String shortName;
  String description;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Blog({
    this.name,
    this.shortName,
    this.description,
    this.isDeleted,
    this.deleterId,
    this.deletionTime,
    this.lastModificationTime,
    this.lastModifierId,
    this.creationTime,
    this.creatorId,
    this.id,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      name: json['name'] as String,
      shortName: json['shortName'] as String,
      description: json['description'] as String,
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
      'name': name,
      'shortName': shortName,
      'description': description,
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
