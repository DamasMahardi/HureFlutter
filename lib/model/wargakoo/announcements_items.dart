import 'announcements.dart';
import 'rukun_tetangga.dart';

class AnnouncementsItems {
  Announcements announcement;
  RukunTetangga rukunTetangga;

  AnnouncementsItems({this.announcement, this.rukunTetangga});

  factory AnnouncementsItems.fromJson(Map<String, dynamic> json) {
    return AnnouncementsItems(
      announcement: json['announcement'] != null
          ? new Announcements.fromJson(json['announcement'])
          : null,
      rukunTetangga: json['rukunTetangga'] != null
          ? new RukunTetangga.fromJson(json['rukunTetangga'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.announcement != null) {
      data['announcement'] = this.announcement.toJson();
    }
    if (this.rukunTetangga != null) {
      data['rukunTetangga'] = this.rukunTetangga.toJson();
    }
    return data;
  }
}
