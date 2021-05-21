import 'timeline_post_items.dart';

class TimelineCommentList {
  int totalCount;
  List<TimelinePostItems> items;

  TimelineCommentList({this.totalCount, this.items});

  factory TimelineCommentList.fromJson(Map<String, dynamic> json) {
    return TimelineCommentList(
      totalCount: json['totalCount'] as int,
      items: (json['items'] as List<TimelinePostItems>)?.map((e) {
        return e == null
            ? null
            : TimelinePostItems.fromJson(e as Map<String, dynamic>);
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
