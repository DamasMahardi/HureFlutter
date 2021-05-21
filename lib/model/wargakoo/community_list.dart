import 'community.dart';

class CommunityList {
  int totalCount;
  List<Community> items;

  CommunityList({this.totalCount, this.items});

  factory CommunityList.fromJson(Map<String, dynamic> json) {
    return CommunityList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<Community>((v) => new Community.fromJson(v))
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
