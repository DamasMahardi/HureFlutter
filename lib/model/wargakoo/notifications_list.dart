import 'notifications.dart';

class NotificationsList {
  int totalCount;
  List<Notifications> items;

  NotificationsList({this.totalCount, this.items});

  factory NotificationsList.fromJson(Map<String, dynamic> json) {
    return NotificationsList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<Notifications>((v) => new Notifications.fromJson(v))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
