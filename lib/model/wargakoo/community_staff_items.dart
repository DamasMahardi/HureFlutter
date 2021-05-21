import 'community_member_items.dart';
import 'community_staff.dart';
import 'community.dart';
import 'job_position.dart';

class CommunityStaffItems {
  CommunityStaff communityStaff;
  Community community;
  JobPosition jobPosition;
  CommunityMemberItems communityMember;

  CommunityStaffItems(
      {this.communityStaff,
      this.community,
      this.jobPosition,
      this.communityMember});

  factory CommunityStaffItems.fromJson(Map<String, dynamic> json) {
    return CommunityStaffItems(
      communityStaff: json['communityStaff'] != null
          ? new CommunityStaff.fromJson(json['communityStaff'])
          : null,
      community: json['community'] != null
          ? new Community.fromJson(json['community'])
          : null,
      jobPosition: json['jobPosition'] != null
          ? new JobPosition.fromJson(json['jobPosition'])
          : null,
      communityMember: json['communityMember'] != null
          ? new CommunityMemberItems.fromJson(json['communityMember'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.communityStaff != null) {
      data['communityStaff'] = this.communityStaff.toJson();
    }
    if (this.community != null) {
      data['community'] = this.community.toJson();
    }
    if (this.jobPosition != null) {
      data['jobPosition'] = this.jobPosition.toJson();
    }
    if (this.communityMember != null) {
      data['communityMember'] = this.communityMember.toJson();
    }
    return data;
  }
}
