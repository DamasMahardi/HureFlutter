class RukunWarga  {
	String code;
	int no;
	String description;
	String terms;
	int numberOfRukunTetangga;
	String provinsi;
	String kabupaten;
	String kecamatan;
	String kelurahan;
	String wilayah;
	String kode;
	String tenant;
	String banner;
	String logo;
	String motto;
	bool isActive;
	bool isDisabled;
	String wilayahId;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	RukunWarga({this.code, this.no, this.description, this.terms, this.numberOfRukunTetangga, this.provinsi, this.kabupaten, this.kecamatan, this.kelurahan, this.wilayah, this.kode, this.tenant, this.banner, this.logo, this.motto, this.isActive, this.isDisabled, this.wilayahId, this.isDeleted, this.deleterId, this.deletionTime, this.lastModificationTime, this.lastModifierId, this.creationTime, this.creatorId, this.id});

	factory RukunWarga.fromJson(Map<String, dynamic> json) {
		return RukunWarga(
			code: json['code'],
			no: json['no'],
			description: json['description'],
			terms: json['terms'],
			numberOfRukunTetangga: json['numberOfRukunTetangga'],
			provinsi: json['provinsi'],
			kabupaten: json['kabupaten'],
			kecamatan: json['kecamatan'],
			kelurahan: json['kelurahan'],
			wilayah: json['wilayah'],
			kode: json['kode'],
			tenant: json['tenant'],
			banner: json['banner'],
			logo: json['logo'],
			motto: json['motto'],
			isActive: json['isActive'],
			isDisabled: json['isDisabled'],
			wilayahId: json['wilayahId'],
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
		data['numberOfRukunTetangga'] = this.numberOfRukunTetangga;
		data['provinsi'] = this.provinsi;
		data['kabupaten'] = this.kabupaten;
		data['kecamatan'] = this.kecamatan;
		data['kelurahan'] = this.kelurahan;
		data['wilayah'] = this.wilayah;
		data['kode'] = this.kode;
		data['tenant'] = this.tenant;
		data['banner'] = this.banner;
		data['logo'] = this.logo;
		data['motto'] = this.motto;
		data['isActive'] = this.isActive;
		data['isDisabled'] = this.isDisabled;
		data['wilayahId'] = this.wilayahId;
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
