import "values.dart";

class Features  {
	Values values;

	Features({this.values});

	factory Features.fromJson(Map<String, dynamic> json) {
		return Features(
			values: json['values'] != null ? new Values.fromJson(json['values']) : null,
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.values != null) {
      data['values'] = this.values.toJson();
    }
		return data;
	}


}
