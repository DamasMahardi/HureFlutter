import "community_member.dart";
import "community.dart";
import "warga.dart";

class CommunityMemberNav  {
	CommunityMember communityMember;
	Community community;
	Warga warga;

	CommunityMemberNav({this.communityMember, this.community, this.warga});

	factory CommunityMemberNav.fromJson(Map<String, dynamic> json) {
		return CommunityMemberNav(
			communityMember: json['communityMember'] != null ? new CommunityMember.fromJson(json['communityMember']) : null,
			community: json['community'] != null ? new Community.fromJson(json['community']) : null,
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
