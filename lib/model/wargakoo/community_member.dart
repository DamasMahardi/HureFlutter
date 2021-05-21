class CommunityMember  {
	String code;
	String dateJoin;
	String dateEnd;
	bool isActive;
	bool isApproved;
	String approvedBy;
	String approvedDateTime;
	String isVerified;
	String verifiedBy;
	String verifiedDateTime;
	bool isBanned;
	String bannedBy;
	String bannedDateTime;
	int banRequestCounter;
	int postCounter;
	int reactionCounter;
	String messages;
	String communityId;
	String wargaId;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	CommunityMember({this.code, this.dateJoin, this.dateEnd, this.isActive, this.isApproved, this.approvedBy, this.approvedDateTime, this.isVerified, this.verifiedBy, this.verifiedDateTime, this.isBanned, this.bannedBy, this.bannedDateTime, this.banRequestCounter, this.postCounter, this.reactionCounter, this.messages, this.communityId, this.wargaId, this.isDeleted, this.deleterId, this.deletionTime, this.lastModificationTime, this.lastModifierId, this.creationTime, this.creatorId, this.id});

	factory CommunityMember.fromJson(Map<String, dynamic> json) {
		return CommunityMember(
			code: json['code'],
			dateJoin: json['dateJoin'],
			dateEnd: json['dateEnd'],
			isActive: json['isActive'],
			isApproved: json['isApproved'],
			approvedBy: json['approvedBy'],
			approvedDateTime: json['approvedDateTime'],
			isVerified: json['isVerified'],
			verifiedBy: json['verifiedBy'],
			verifiedDateTime: json['verifiedDateTime'],
			isBanned: json['isBanned'],
			bannedBy: json['bannedBy'],
			bannedDateTime: json['bannedDateTime'],
			banRequestCounter: json['banRequestCounter'],
			postCounter: json['postCounter'],
			reactionCounter: json['reactionCounter'],
			messages: json['messages'],
			communityId: json['communityId'],
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
		data['code'] = this.code;
		data['dateJoin'] = this.dateJoin;
		data['dateEnd'] = this.dateEnd;
		data['isActive'] = this.isActive;
		data['isApproved'] = this.isApproved;
		data['approvedBy'] = this.approvedBy;
		data['approvedDateTime'] = this.approvedDateTime;
		data['isVerified'] = this.isVerified;
		data['verifiedBy'] = this.verifiedBy;
		data['verifiedDateTime'] = this.verifiedDateTime;
		data['isBanned'] = this.isBanned;
		data['bannedBy'] = this.bannedBy;
		data['bannedDateTime'] = this.bannedDateTime;
		data['banRequestCounter'] = this.banRequestCounter;
		data['postCounter'] = this.postCounter;
		data['reactionCounter'] = this.reactionCounter;
		data['messages'] = this.messages;
		data['communityId'] = this.communityId;
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
