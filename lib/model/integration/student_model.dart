class StudentModel {
  int studentId;
  String studentName;
  String studentPhoneNumber;
  String studentGender;
  String studentAddress;

  StudentModel({this.studentId, this.studentName, this.studentPhoneNumber, this.studentGender, this.studentAddress});

  StudentModel.fromJson(Map<String, dynamic> json) {
    studentId = json['studentId'];
    studentName = json['studentName'];
    studentPhoneNumber = json['studentPhoneNumber'];
    studentGender = json['studentGender'];
    studentAddress = json['studentAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['studentId'] = this.studentId;
    data['studentName'] = this.studentName;
    data['studentPhoneNumber'] = this.studentPhoneNumber;
    data['studentGender'] = this.studentGender;
    data['studentAddress'] = this.studentAddress;
    return data;
  }
}