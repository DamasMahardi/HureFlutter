class BlogPostCreate {
  String blogId;
  String title;
  String coverImage;
  String url;
  String content;
  String tags;
  String description;

  BlogPostCreate({
    this.blogId,
    this.title,
    this.coverImage,
    this.url,
    this.content,
    this.tags,
    this.description,
  });

  factory BlogPostCreate.fromJson(Map<String, dynamic> json) {
    return BlogPostCreate(
      blogId: json['blogId'] as String,
      title: json['title'] as String,
      coverImage: json['coverImage'] as String,
      url: json['url'] as String,
      content: json['content'] as String,
      tags: json['tags'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'blogId': blogId,
      'title': title,
      'coverImage': coverImage,
      'url': url,
      'content': content,
      'tags': tags,
      'description': description,
    };
  }
}
