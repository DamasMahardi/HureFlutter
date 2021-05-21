import 'timeline_post_comment.dart';

class TimelinePostCommentList {
  int totalCount;
  List<TimelinePostComment> items;

  TimelinePostCommentList({this.totalCount, this.items});

  factory TimelinePostCommentList.fromJson(Map<String, dynamic> json) {
    return TimelinePostCommentList(
      totalCount: json['totalCount'] as int,
      items: (json['items'] as List<TimelinePostComment>)?.map((e) {
        return e == null
            ? null
            : TimelinePostComment.fromJson(e as Map<String, dynamic>);
      })?.toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items?.map((e) => e?.toJson())?.toList(),
    };
  }
}
