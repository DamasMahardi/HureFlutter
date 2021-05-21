class ImageServer {
  String id;
  String fileContent;

  ImageServer({this.id, this.fileContent});

  factory ImageServer.fromJson(Map<String, dynamic> json) {
    return ImageServer(
      id: json['id'] as String,
      fileContent: json['fileContent'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fileContent': fileContent,
    };
  }

  ImageServer copyWith({
    String id,
    String fileContent,
  }) {
    return ImageServer(
      id: id ?? this.id,
      fileContent: fileContent ?? this.fileContent,
    );
  }
}
