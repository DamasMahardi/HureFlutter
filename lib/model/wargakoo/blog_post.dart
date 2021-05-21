import 'tags.dart';
import 'writer.dart';

class BlogPost {
  String blogId;
  String title;
  String coverImage;
  String url;
  String content;
  String description;
  int readCount;
  int commentCount;
  Writer writer;
  List<Tags> tags;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  BlogPost({
    this.blogId,
    this.title,
    this.coverImage,
    this.url,
    this.content,
    this.description,
    this.readCount,
    this.commentCount,
    this.writer,
    this.tags,
    this.isDeleted,
    this.deleterId,
    this.deletionTime,
    this.lastModificationTime,
    this.lastModifierId,
    this.creationTime,
    this.creatorId,
    this.id,
  });

  factory BlogPost.fromJson(Map<String, dynamic> json) {
    return BlogPost(
      blogId: json['blogId'] as String,
      title: json['title'] as String,
      coverImage: json['coverImage'] as String,
      url: json['url'] as String,
      content: json['content'] as String,
      description: json['description'] as String,
      readCount: json['readCount'] as int,
      commentCount: json['commentCount'] as int,
      writer: json['writer'] == null
          ? null
          : Writer.fromJson(json['writer'] as Map<String, dynamic>),
      tags: (json['tags'] as List)
          ?.map((e) => e == null
              ? null
              : Tags.fromJson(json['tags'] as Map<String, dynamic>))
          ?.toList(),
      isDeleted: json['isDeleted'] as bool,
      deleterId: json['deleterId'] as String,
      deletionTime: json['deletionTime'] as String,
      lastModificationTime: json['lastModificationTime'] as String,
      lastModifierId: json['lastModifierId'] as String,
      creationTime: json['creationTime'] as String,
      creatorId: json['creatorId'] as String,
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'blogId': blogId,
      'title': title,
      'coverImage': coverImage,
      'url': url,
      'content': content,
      'description': description,
      'readCount': readCount,
      'commentCount': commentCount,
      'writer': writer?.toJson(),
      'tags': tags?.map((e) => e?.toJson())?.toList(),
      'isDeleted': isDeleted,
      'deleterId': deleterId,
      'deletionTime': deletionTime,
      'lastModificationTime': lastModificationTime,
      'lastModifierId': lastModifierId,
      'creationTime': creationTime,
      'creatorId': creatorId,
      'id': id,
    };
  }
}
