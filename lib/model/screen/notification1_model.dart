class Notification1Model {
  int id;
  String message;
  String notifDate;

  Notification1Model({this.id, this.message, this.notifDate});

  Notification1Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
    notifDate = json['notifDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['message'] = this.message;
    data['notifDate'] = this.notifDate;
    return data;
  }
}