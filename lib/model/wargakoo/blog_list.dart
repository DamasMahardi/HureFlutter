import "blog.dart";

class BlogList {
  List<Blog> items;

  BlogList({this.items});

  factory BlogList.fromJson(Map<String, dynamic> json) {
    return BlogList(
      items: (json['items'] as List)
          ?.map((e) => e == null
              ? null
              : Blog.fromJson(json['items'] as Map<String, dynamic>))
          ?.toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items?.map((e) => e?.toJson())?.toList(),
    };
  }
}
