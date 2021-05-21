class RukunTetangga  {
	String code;
	int no;
	String description;
	String terms;
	String rukunWargaId;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	RukunTetangga({this.code, this.no, this.description, this.terms, this.rukunWargaId, this.isDeleted, this.deleterId, this.deletionTime, this.lastModificationTime, this.lastModifierId, this.creationTime, this.creatorId, this.id});

	factory RukunTetangga.fromJson(Map<String, dynamic> json) {
		return RukunTetangga(
			code: json['code'],
			no: json['no'],
			description: json['description'],
			terms: json['terms'],
			rukunWargaId: json['rukunWargaId'],
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
		data['no'] = this.no;
		data['description'] = this.description;
		data['terms'] = this.terms;
		data['rukunWargaId'] = this.rukunWargaId;
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
