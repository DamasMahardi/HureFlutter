class Windows  {
	String timeZoneId;

	Windows({this.timeZoneId});

	factory Windows.fromJson(Map<String, dynamic> json) {
		return Windows(
			timeZoneId: json['timeZoneId'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['timeZoneId'] = this.timeZoneId;
		return data;
	}


}
