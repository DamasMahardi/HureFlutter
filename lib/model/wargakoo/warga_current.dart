import 'package:uihure/model/wargakoo/community_member_items.dart';
import 'package:uihure/model/wargakoo/rukun_tetangga_staff.dart';
import 'package:uihure/model/wargakoo/rukun_warga_staff.dart';

import 'business.dart';
import 'community_member_items.dart';
import "rukun_tetangga.dart";
import "warga.dart";

class WargaCurrent {
  Warga warga;
  RukunTetangga rukunTetangga;
  RukunWargaStaff rukunWargaStaff;
  RukunTetanggaStaff rukunTetanggaStaff;
  List<CommunityMemberItems> communityMember;
  List<Business> business;

  WargaCurrent(
      {this.warga,
      this.rukunTetangga,
      this.rukunWargaStaff,
      this.rukunTetanggaStaff,
      this.communityMember,
      this.business});

  factory WargaCurrent.fromJson(Map<String, dynamic> json) {
    return WargaCurrent(
      warga: json['warga'] != null ? new Warga.fromJson(json['warga']) : null,
      rukunTetangga: json['rukunTetangga'] != null
          ? new RukunTetangga.fromJson(json['rukunTetangga'])
          : null,
      rukunWargaStaff: json['rukunWargaStaff'] != null
          ? new RukunWargaStaff.fromJson(json['rukunWargaStaff'])
          : null,
      rukunTetanggaStaff: json['rukunTetanggaStaff'] != null
          ? new RukunTetanggaStaff.fromJson(json['rukunTetanggaStaff'])
          : null,
      communityMember: json['communityMember'] != null
          ? json['communityMember']
              .map<CommunityMemberItems>(
                  (v) => new CommunityMemberItems.fromJson(v))
              .toList()
          : null,
      business: json['business'] != null
          ? json['business']
              .map<Business>((v) => new Business.fromJson(v))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.warga != null) {
      data['warga'] = this.warga.toJson();
    }
    if (this.rukunTetangga != null) {
      data['rukunTetangga'] = this.rukunTetangga.toJson();
    }

    if (this.rukunWargaStaff != null) {
      data['rukunWargaStaff'] = this.rukunWargaStaff.toJson();
    }

    if (data['rukunTetanggaStaff'] != null) {
      data['rukunTetanggaStaff'] = this.rukunTetanggaStaff.toJson();
    }

    if (this.communityMember != null) {
      data['communityMember'] =
          this.communityMember.map((v) => v.toJson()).toList();
    }
    if (this.business != null) {
      data['business'] = this.business.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
