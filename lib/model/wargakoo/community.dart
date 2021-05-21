class Community  {
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
	int memberTotal;
	bool isPublish;
	bool isMember;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	Community({this.code, this.name, this.description, this.logo, this.bannerImage, this.terms, this.dateStart, this.isActive, this.isBanned, this.bannedReason, this.memberTotal, this.isPublish, this.isMember, this.isDeleted, this.deleterId, this.deletionTime, this.lastModificationTime, this.lastModifierId, this.creationTime, this.creatorId, this.id});

	factory Community.fromJson(Map<String, dynamic> json) {
		return Community(
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
			memberTotal: json['memberTotal'],
			isPublish: json['isPublish'],
			isMember: json['isMember'],
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
		data['logo'] = this.logo;
		data['bannerImage'] = this.bannerImage;
		data['terms'] = this.terms;
		data['dateStart'] = this.dateStart;
		data['isActive'] = this.isActive;
		data['isBanned'] = this.isBanned;
		data['bannedReason'] = this.bannedReason;
		data['memberTotal'] = this.memberTotal;
		data['isPublish'] = this.isPublish;
		data['isMember'] = this.isMember;
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
