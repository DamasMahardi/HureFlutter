class MultiTenancy  {
	bool isEnabled;

	MultiTenancy({this.isEnabled});

	factory MultiTenancy.fromJson(Map<String, dynamic> json) {
		return MultiTenancy(
			isEnabled: json['isEnabled'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isEnabled'] = this.isEnabled;
		return data;
	}


}
