class Wilayah  {
	String kode;
	String nama;
	String tingkat;
	String namaLengkap;
	String id;

	Wilayah({this.kode, this.nama, this.tingkat, this.namaLengkap, this.id});

	factory Wilayah.fromJson(Map<String, dynamic> json) {
		return Wilayah(
			kode: json['kode'],
			nama: json['nama'],
			tingkat: json['tingkat'],
			namaLengkap: json['namaLengkap'],
			id: json['id'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['kode'] = this.kode;
		data['nama'] = this.nama;
		data['tingkat'] = this.tingkat;
		data['namaLengkap'] = this.namaLengkap;
		data['id'] = this.id;
		return data;
	}


}
