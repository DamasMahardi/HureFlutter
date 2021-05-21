import 'timeline_post_items.dart';

class TimelinePostList {
  int totalCount;
  List<TimelinePostItems> items;

  TimelinePostList({this.totalCount, this.items});

  factory TimelinePostList.fromJson(Map<String, dynamic> json) {
    return TimelinePostList(
      totalCount: json['totalCount'] as int,
      items: (json['items'] as List<dynamic>)?.map<TimelinePostItems>((e) {
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
