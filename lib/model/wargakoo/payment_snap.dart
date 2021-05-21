class PaymentSnap {
	String orderId;
	String orderDateTime;
	String paymentType;
	int amount;
	String status;
	String statusDateTime;
	String name;
	String phone;
	String email;
	String address;
	String virtualAccount;
	String acquiringBank;
	String channelType;
	String referenceId;
	String expiredDateTime;
	int paymentAmount;

	PaymentSnap({
		this.orderId,
		this.orderDateTime,
		this.paymentType,
		this.amount,
		this.status,
		this.statusDateTime,
		this.name,
		this.phone,
		this.email,
		this.address,
		this.virtualAccount,
		this.acquiringBank,
		this.channelType,
		this.referenceId,
		this.expiredDateTime,
		this.paymentAmount,
	});

	factory PaymentSnap.fromJson(Map<String, dynamic> json) {
		return PaymentSnap(
			orderId: json['orderId'] as String,
			orderDateTime: json['orderDateTime'] as String,
			paymentType: json['paymentType'] as String,
			amount: json['amount'] as int,
			status: json['status'] as String,
			statusDateTime: json['statusDateTime'] as String,
			name: json['name'] as String,
			phone: json['phone'] as String,
			email: json['email'] as String,
			address: json['address'] as String,
			virtualAccount: json['virtualAccount'] as String,
			acquiringBank: json['acquiringBank'] as String,
			channelType: json['channelType'] as String,
			referenceId: json['referenceId'] as String,
			expiredDateTime: json['expiredDateTime'] as String,
			paymentAmount: json['paymentAmount'] as int,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'orderId': orderId,
			'orderDateTime': orderDateTime,
			'paymentType': paymentType,
			'amount': amount,
			'status': status,
			'statusDateTime': statusDateTime,
			'name': name,
			'phone': phone,
			'email': email,
			'address': address,
			'virtualAccount': virtualAccount,
			'acquiringBank': acquiringBank,
			'channelType': channelType,
			'referenceId': referenceId,
			'expiredDateTime': expiredDateTime,
			'paymentAmount': paymentAmount,
		};
	}
}
