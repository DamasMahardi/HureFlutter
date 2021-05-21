import "current_user.dart";
import "features.dart";
import "multi_tenancy.dart";
import "current_tenant.dart";
import "timing.dart";
import "clock.dart";

class AppConfig  {
	CurrentUser currentUser;
	Features features;
	MultiTenancy multiTenancy;
	CurrentTenant currentTenant;
	Timing timing;
	Clock clock;

	AppConfig({this.currentUser, this.features, this.multiTenancy, this.currentTenant, this.timing, this.clock});

	factory AppConfig.fromJson(Map<String, dynamic> json) {
		return AppConfig(
			currentUser: json['currentUser'] != null ? new CurrentUser.fromJson(json['currentUser']) : null,
			features: json['features'] != null ? new Features.fromJson(json['features']) : null,
			multiTenancy: json['multiTenancy'] != null ? new MultiTenancy.fromJson(json['multiTenancy']) : null,
			currentTenant: json['currentTenant'] != null ? new CurrentTenant.fromJson(json['currentTenant']) : null,
			timing: json['timing'] != null ? new Timing.fromJson(json['timing']) : null,
			clock: json['clock'] != null ? new Clock.fromJson(json['clock']) : null,
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.currentUser != null) {
      data['currentUser'] = this.currentUser.toJson();
    }
		if (this.features != null) {
      data['features'] = this.features.toJson();
    }
		if (this.multiTenancy != null) {
      data['multiTenancy'] = this.multiTenancy.toJson();
    }
		if (this.currentTenant != null) {
      data['currentTenant'] = this.currentTenant.toJson();
    }
		if (this.timing != null) {
      data['timing'] = this.timing.toJson();
    }
		if (this.clock != null) {
      data['clock'] = this.clock.toJson();
    }
		return data;
	}


}
