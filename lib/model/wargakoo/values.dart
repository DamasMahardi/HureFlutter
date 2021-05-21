class Values  {
	String identityTwoFactor;
	String accountEnableLdapLogin;

	Values({this.identityTwoFactor, this.accountEnableLdapLogin});

	factory Values.fromJson(Map<String, dynamic> json) {
		return Values(
			identityTwoFactor: json['Identity.TwoFactor'],
			accountEnableLdapLogin: json['Account.EnableLdapLogin'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['Identity.TwoFactor'] = this.identityTwoFactor;
		data['Account.EnableLdapLogin'] = this.accountEnableLdapLogin;
		return data;
	}


}
