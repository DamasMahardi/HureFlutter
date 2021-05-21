class Clock  {
	String kind;

	Clock({this.kind});

	factory Clock.fromJson(Map<String, dynamic> json) {
		return Clock(
			kind: json['kind'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['kind'] = this.kind;
		return data;
	}


}
