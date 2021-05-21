import "iana.dart";
import "windows.dart";

class TimeZone  {
	Iana iana;
	Windows windows;

	TimeZone({this.iana, this.windows});

	factory TimeZone.fromJson(Map<String, dynamic> json) {
		return TimeZone(
			iana: json['iana'] != null ? new Iana.fromJson(json['iana']) : null,
			windows: json['windows'] != null ? new Windows.fromJson(json['windows']) : null,
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.iana != null) {
      data['iana'] = this.iana.toJson();
    }
		if (this.windows != null) {
      data['windows'] = this.windows.toJson();
    }
		return data;
	}


}
