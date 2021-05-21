class CurrentTenant  {
	String id;
	String name;
	bool isAvailable;

	CurrentTenant({this.id, this.name, this.isAvailable});

	factory CurrentTenant.fromJson(Map<String, dynamic> json) {
		return CurrentTenant(
			id: json['id'],
			name: json['name'],
			isAvailable: json['isAvailable'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['isAvailable'] = this.isAvailable;
		return data;
	}


}
