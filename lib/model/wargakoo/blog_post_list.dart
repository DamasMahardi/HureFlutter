import 'blog_post.dart';

class BlogPostList {
  List<BlogPost> items;

  BlogPostList({this.items});

  factory BlogPostList.fromJson(Map<String, dynamic> json) {
    return BlogPostList(
      items: (json['items'] as List)
          ?.map((e) => e == null
              ? null
              : BlogPost.fromJson(json['items'] as Map<String, dynamic>))
          ?.toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items?.map((e) => e?.toJson())?.toList(),
    };
  }
}
