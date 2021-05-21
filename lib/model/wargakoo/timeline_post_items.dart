import 'timeline_post.dart';
import 'warga.dart';

class TimelinePostItems {
  TimelinePost timelinePost;
  Warga warga;

  TimelinePostItems({this.timelinePost, this.warga});

  factory TimelinePostItems.fromJson(Map<String, dynamic> json) {
    return TimelinePostItems(
      timelinePost: json['timelinePost'] == null
          ? null
          : TimelinePost.fromJson(json['timelinePost'] as Map<String, dynamic>),
      warga: json['warga'] == null
          ? null
          : Warga.fromJson(json['warga'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'timelinePost': timelinePost?.toJson(),
      'warga': warga?.toJson(),
    };
  }
}
