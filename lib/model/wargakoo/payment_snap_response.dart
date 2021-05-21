class PaymentSnapResponse {
	String redirectUrl;
	String token;

	PaymentSnapResponse({this.redirectUrl, this.token});

	factory PaymentSnapResponse.fromJson(Map<String, dynamic> json) {
		return PaymentSnapResponse(
			redirectUrl: json['redirectUrl'] as String,
			token: json['token'] as String,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'redirectUrl': redirectUrl,
			'token': token,
		};
	}
}
