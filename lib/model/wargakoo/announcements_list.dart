import 'announcements_items.dart';

class AnnouncementsList {
  int totalCount;
  List<AnnouncementsItems> items;

  AnnouncementsList({this.totalCount, this.items});

  factory AnnouncementsList.fromJson(Map<String, dynamic> json) {
    return AnnouncementsList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<AnnouncementsItems>(
                  (v) => new AnnouncementsItems.fromJson(v))
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
