class Tags {
	String name;
	String description;
	int usageCount;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	Tags({
		this.name,
		this.description,
		this.usageCount,
		this.isDeleted,
		this.deleterId,
		this.deletionTime,
		this.lastModificationTime,
		this.lastModifierId,
		this.creationTime,
		this.creatorId,
		this.id,
	});

	factory Tags.fromJson(Map<String, dynamic> json) {
		return Tags(
			name: json['name'] as String,
			description: json['description'] as String,
			usageCount: json['usageCount'] as int,
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
			'description': description,
			'usageCount': usageCount,
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
