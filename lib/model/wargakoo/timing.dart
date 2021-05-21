import "time_zone.dart";

class Timing  {
	TimeZone timeZone;

	Timing({this.timeZone});

	factory Timing.fromJson(Map<String, dynamic> json) {
		return Timing(
			timeZone: json['timeZone'] != null ? new TimeZone.fromJson(json['timeZone']) : null,
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.timeZone != null) {
      data['timeZone'] = this.timeZone.toJson();
    }
		return data;
	}


}
