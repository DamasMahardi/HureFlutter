class Notification2Model {
  int id;
  String title;
  String message;
  String notifDate;

  Notification2Model({this.id, this.title, this.message, this.notifDate});

  Notification2Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    message = json['message'];
    notifDate = json['notifDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['message'] = this.message;
    data['notifDate'] = this.notifDate;
    return data;
  }
}