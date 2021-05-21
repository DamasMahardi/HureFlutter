class MyProfile {
  String userName;
  String email;
  bool emailConfirmed;
  String name;
  String surname;
  String phoneNumber;
  bool phoneNumberConfirmed;
  bool isExternal;
  bool hasPassword;

  MyProfile(
      {this.userName,
      this.email,
      this.emailConfirmed,
      this.name,
      this.surname,
      this.phoneNumber,
      this.phoneNumberConfirmed,
      this.isExternal,
      this.hasPassword});

  factory MyProfile.fromJson(Map<String, dynamic> json) {
    return MyProfile(
        userName: json['userName'],
        email: json['email'],
        emailConfirmed: json['emailConfirmed'],
        name: json['name'],
        surname: json['surname'],
        phoneNumber: json['phoneNumber'],
        phoneNumberConfirmed: json['phoneNumberConfirmed'],
        isExternal: json['isExternal'],
        hasPassword: json['hasPassword']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['emailConfirmed'] = this.emailConfirmed;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['phoneNumber'] = this.phoneNumber;
    data['phoneNumberConfirmed'] = this.phoneNumberConfirmed;
    data['isExternal'] = this.isExternal;
    data['hasPassword'] = this.hasPassword;

    return data;
  }
}
