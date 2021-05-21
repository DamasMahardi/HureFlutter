class CurrentUser  {
	bool isAuthenticated;
	String id;
	String tenantId;
	String userName;
	String name;
	String surName;
	String email;
	bool emailVerified;
	String phoneNumber;
	bool phoneNumberVerified;
	List<String> roles;

	CurrentUser({this.isAuthenticated, this.id, this.tenantId, this.userName, this.name, this.surName, this.email, this.emailVerified, this.phoneNumber, this.phoneNumberVerified, this.roles});

	factory CurrentUser.fromJson(Map<String, dynamic> json) {
		return CurrentUser(
			isAuthenticated: json['isAuthenticated'],
			id: json['id'],
			tenantId: json['tenantId'],
			userName: json['userName'],
			name: json['name'],
			surName: json['surName'],
			email: json['email'],
			emailVerified: json['emailVerified'],
			phoneNumber: json['phoneNumber'],
			phoneNumberVerified: json['phoneNumberVerified'],
			roles: json['roles'].cast<String>(),
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isAuthenticated'] = this.isAuthenticated;
		data['id'] = this.id;
		data['tenantId'] = this.tenantId;
		data['userName'] = this.userName;
		data['name'] = this.name;
		data['surName'] = this.surName;
		data['email'] = this.email;
		data['emailVerified'] = this.emailVerified;
		data['phoneNumber'] = this.phoneNumber;
		data['phoneNumberVerified'] = this.phoneNumberVerified;
		data['roles'] = this.roles;
		return data;
	}


}
