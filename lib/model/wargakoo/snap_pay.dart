class SnapPay {
	List<String> orderIds;

	SnapPay({this.orderIds});

	factory SnapPay.fromJson(Map<String, dynamic> json) {
		return SnapPay(
			orderIds: json['orderIds'] as List<String>,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'orderIds': orderIds,
		};
	}
}
