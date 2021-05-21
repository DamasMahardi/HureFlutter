class ImageBloob  {
	int type;
	String source;
	String fileContent;

	ImageBloob({this.type, this.source, this.fileContent});

	factory ImageBloob.fromJson(Map<String, dynamic> json) {
		return ImageBloob(
			type: json['type'],
			source: json['source'],
			fileContent: json['fileContent'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['type'] = this.type;
		data['source'] = this.source;
		data['fileContent'] = this.fileContent;
		return data;
	}


}
