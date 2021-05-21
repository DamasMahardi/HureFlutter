import 'like.dart';

class LikeList {
  int totalCount;
  List<Like> items;

  LikeList({this.totalCount, this.items});

  factory LikeList.fromJson(Map<String, dynamic> json) {
    return LikeList(
      totalCount: json['totalCount'] as int,
      items: (json['items'] as List<Like>)?.map((e) {
        return e == null ? null : Like.fromJson(e as Map<String, dynamic>);
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
