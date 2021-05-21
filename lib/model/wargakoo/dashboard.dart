class Dashboard  {
	int wargaTotal;
	int wargaLakiLaki;
	int wargaPerempuan;
	int wargaMenikah;
	int wargaTdkMenikah;

	Dashboard({this.wargaTotal, this.wargaLakiLaki, this.wargaPerempuan, this.wargaMenikah, this.wargaTdkMenikah});

	factory Dashboard.fromJson(Map<String, dynamic> json) {
		return Dashboard(
			wargaTotal: json['wargaTotal'],
			wargaLakiLaki: json['wargaLakiLaki'],
			wargaPerempuan: json['wargaPerempuan'],
			wargaMenikah: json['wargaMenikah'],
			wargaTdkMenikah: json['wargaTdkMenikah'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['wargaTotal'] = this.wargaTotal;
		data['wargaLakiLaki'] = this.wargaLakiLaki;
		data['wargaPerempuan'] = this.wargaPerempuan;
		data['wargaMenikah'] = this.wargaMenikah;
		data['wargaTdkMenikah'] = this.wargaTdkMenikah;
		return data;
	}


}
