import 'community_member_items.dart';

class CommunityMemberList {
  int totalCount;
  List<CommunityMemberItems> items;

  CommunityMemberList({this.totalCount, this.items});

  factory CommunityMemberList.fromJson(Map<String, dynamic> json) {
    return CommunityMemberList(
      totalCount: json['totalCount'],
      items: json['items'] != null
          ? json['items']
              .map<CommunityMemberItems>(
                  (v) => new CommunityMemberItems.fromJson(v))
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
