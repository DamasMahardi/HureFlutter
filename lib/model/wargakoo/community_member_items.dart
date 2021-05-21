import 'community_member.dart';
import 'community.dart';
import 'warga.dart';

class CommunityMemberItems {
  CommunityMember communityMember;
  Community community;
  Warga warga;

  CommunityMemberItems({this.communityMember, this.community, this.warga});

  factory CommunityMemberItems.fromJson(Map<String, dynamic> json) {
    return CommunityMemberItems(
      communityMember: json['communityMember'] != null
          ? new CommunityMember.fromJson(json['communityMember'])
          : null,
      community: json['community'] != null
          ? new Community.fromJson(json['community'])
          : null,
      warga: json['warga'] != null ? new Warga.fromJson(json['warga']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.communityMember != null) {
      data['communityMember'] = this.communityMember.toJson();
    }
    if (this.community != null) {
      data['community'] = this.community.toJson();
    }
    if (this.warga != null) {
      data['warga'] = this.warga.toJson();
    }
    return data;
  }
}
