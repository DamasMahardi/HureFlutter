import "community.dart";
import "community_staff.dart";
import "dashboard.dart";

class CommunityCurrent {
  Community community;
  List<CommunityStaff> communityStaff;
  Dashboard dashboard;

  CommunityCurrent({this.community, this.communityStaff, this.dashboard});

  factory CommunityCurrent.fromJson(Map<String, dynamic> json) {
    return CommunityCurrent(
      community: json['community'] != null
          ? new Community.fromJson(json['community'])
          : null,
      communityStaff: json['communityStaff'] != null
          ? json['communityStaff']
              .map<CommunityStaff>((v) => new CommunityStaff.fromJson(v))
              .toList()
          : null,
      dashboard: json['dashboard'] != null
          ? new Dashboard.fromJson(json['dashboard'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.community != null) {
      data['community'] = this.community.toJson();
    }
    if (this.communityStaff != null) {
      data['communityStaff'] =
          this.communityStaff.map((v) => v.toJson()).toList();
    }
    if (this.dashboard != null) {
      data['dashboard'] = this.dashboard.toJson();
    }
    return data;
  }
}
