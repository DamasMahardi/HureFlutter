class TimelinePost {
	String content;
	String scope;
	String refId;
	String wargaId;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	TimelinePost({
		this.content,
		this.scope,
		this.refId,
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

	factory TimelinePost.fromJson(Map<String, dynamic> json) {
		return TimelinePost(
			content: json['content'] as String,
			scope: json['scope'] as String,
			refId: json['refId'] as String,
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
			'content': content,
			'scope': scope,
			'refId': refId,
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
