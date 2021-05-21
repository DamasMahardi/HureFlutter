class Warga  {
	String namaLengkap;
	String nik;
	int jenisKelamin;
	String tempatLahir;
	String tanggalLahir;
	int agama;
	int pendidikan;
	int jenisPekerjaan;
	int pernikahan;
	int hubunganKeluarga;
	int kewarganegaraan;
	String appUserId;
	String alamat;
	String email;
	String telp1;
	String telp2;
	String photo;
	String noKartuKeluarga;
	String rukunTetanggaId;
	String userEmail;
	String userPassword;
	bool isDeleted;
	String deleterId;
	String deletionTime;
	String lastModificationTime;
	String lastModifierId;
	String creationTime;
	String creatorId;
	String id;

	Warga({this.namaLengkap, this.nik, this.jenisKelamin, this.tempatLahir, this.tanggalLahir, this.agama, this.pendidikan, this.jenisPekerjaan, this.pernikahan, this.hubunganKeluarga, this.kewarganegaraan, this.appUserId, this.alamat, this.email, this.telp1, this.telp2, this.photo, this.noKartuKeluarga, this.rukunTetanggaId, this.userEmail, this.userPassword, this.isDeleted, this.deleterId, this.deletionTime, this.lastModificationTime, this.lastModifierId, this.creationTime, this.creatorId, this.id});

	factory Warga.fromJson(Map<String, dynamic> json) {
		return Warga(
			namaLengkap: json['namaLengkap'],
			nik: json['nik'],
			jenisKelamin: json['jenisKelamin'],
			tempatLahir: json['tempatLahir'],
			tanggalLahir: json['tanggalLahir'],
			agama: json['agama'],
			pendidikan: json['pendidikan'],
			jenisPekerjaan: json['jenisPekerjaan'],
			pernikahan: json['pernikahan'],
			hubunganKeluarga: json['hubunganKeluarga'],
			kewarganegaraan: json['kewarganegaraan'],
			appUserId: json['appUserId'],
			alamat: json['alamat'],
			email: json['email'],
			telp1: json['telp1'],
			telp2: json['telp2'],
			photo: json['photo'],
			noKartuKeluarga: json['noKartuKeluarga'],
			rukunTetanggaId: json['rukunTetanggaId'],
			userEmail: json['userEmail'],
			userPassword: json['userPassword'],
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
		data['namaLengkap'] = this.namaLengkap;
		data['nik'] = this.nik;
		data['jenisKelamin'] = this.jenisKelamin;
		data['tempatLahir'] = this.tempatLahir;
		data['tanggalLahir'] = this.tanggalLahir;
		data['agama'] = this.agama;
		data['pendidikan'] = this.pendidikan;
		data['jenisPekerjaan'] = this.jenisPekerjaan;
		data['pernikahan'] = this.pernikahan;
		data['hubunganKeluarga'] = this.hubunganKeluarga;
		data['kewarganegaraan'] = this.kewarganegaraan;
		data['appUserId'] = this.appUserId;
		data['alamat'] = this.alamat;
		data['email'] = this.email;
		data['telp1'] = this.telp1;
		data['telp2'] = this.telp2;
		data['photo'] = this.photo;
		data['noKartuKeluarga'] = this.noKartuKeluarga;
		data['rukunTetanggaId'] = this.rukunTetanggaId;
		data['userEmail'] = this.userEmail;
		data['userPassword'] = this.userPassword;
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
