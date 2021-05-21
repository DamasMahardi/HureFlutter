class Iana  {
	String timeZoneName;

	Iana({this.timeZoneName});

	factory Iana.fromJson(Map<String, dynamic> json) {
		return Iana(
			timeZoneName: json['timeZoneName'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['timeZoneName'] = this.timeZoneName;
		return data;
	}


}
