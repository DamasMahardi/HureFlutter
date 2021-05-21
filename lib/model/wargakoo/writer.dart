class Writer {
  String tenantId;
  String userName;
  String email;
  bool emailConfirmed;
  String phoneNumber;
  bool phoneNumberConfirmed;
  String id;

  Writer({
    this.tenantId,
    this.userName,
    this.email,
    this.emailConfirmed,
    this.phoneNumber,
    this.phoneNumberConfirmed,
    this.id,
  });

  factory Writer.fromJson(Map<String, dynamic> json) {
    return Writer(
      tenantId: json['tenantId'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      emailConfirmed: json['emailConfirmed'] as bool,
      phoneNumber: json['phoneNumber'] as String,
      phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool,
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'userName': userName,
      'email': email,
      'emailConfirmed': emailConfirmed,
      'phoneNumber': phoneNumber,
      'phoneNumberConfirmed': phoneNumberConfirmed,
      'id': id,
    };
  }
}
