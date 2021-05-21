class BusinessCategory  {
	String code;
	String name;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	BusinessCategory({this.code, this.name, this.isDeleted, this.deleterId, this.deletionTime, this.lastModificationTime, this.lastModifierId, this.creationTime, this.creatorId, this.id});

	factory BusinessCategory.fromJson(Map<String, dynamic> json) {
		return BusinessCategory(
			code: json['code'],
			name: json['name'],
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
