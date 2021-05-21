import "business.dart";
import "business_category.dart";
import "warga.dart";

class BusinessNav  {
	Business business;
	BusinessCategory businessCategory;
	Warga warga;

	BusinessNav({this.business, this.businessCategory, this.warga});

	factory BusinessNav.fromJson(Map<String, dynamic> json) {
		return BusinessNav(
			business: json['business'] != null ? new Business.fromJson(json['business']) : null,
			businessCategory: json['businessCategory'] != null ? new BusinessCategory.fromJson(json['businessCategory']) : null,
			warga: json['warga'] != null ? new Warga.fromJson(json['warga']) : null,
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.business != null) {
      data['business'] = this.business.toJson();
    }
		if (this.businessCategory != null) {
      data['businessCategory'] = this.businessCategory.toJson();
    }
		if (this.warga != null) {
      data['warga'] = this.warga.toJson();
    }
		return data;
	}


}
