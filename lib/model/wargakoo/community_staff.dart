class CommunityStaff  {
	String dateStart;
	String dateEnd;
	bool isActive;
	String communityId;
	String jobPositionId;
	String communityMemberId;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	CommunityStaff({this.dateStart, this.dateEnd, this.isActive, this.communityId, this.jobPositionId, this.communityMemberId, this.isDeleted, this.deleterId, this.deletionTime, this.lastModificationTime, this.lastModifierId, this.creationTime, this.creatorId, this.id});

	factory CommunityStaff.fromJson(Map<String, dynamic> json) {
		return CommunityStaff(
			dateStart: json['dateStart'],
			dateEnd: json['dateEnd'],
			isActive: json['isActive'],
			communityId: json['communityId'],
			jobPositionId: json['jobPositionId'],
			communityMemberId: json['communityMemberId'],
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
		data['dateStart'] = this.dateStart;
		data['dateEnd'] = this.dateEnd;
		data['isActive'] = this.isActive;
		data['communityId'] = this.communityId;
		data['jobPositionId'] = this.jobPositionId;
		data['communityMemberId'] = this.communityMemberId;
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
