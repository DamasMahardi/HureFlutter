import 'community_staff_items.dart';

class CommunityStaffList {
  int totalCount;
  List<CommunityStaffItems> items;

  CommunityStaffList({this.totalCount, this.items});

  factory CommunityStaffList.fromJson(Map<String, dynamic> json) {
    return CommunityStaffList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<CommunityStaffItems>(
                  (v) => new CommunityStaffItems.fromJson(v))
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
