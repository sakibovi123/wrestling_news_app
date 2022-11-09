class NewsModel {
  int? id;
  String? date;
  String? slug;
  String? status;
  Title? title;
  Title? content;
  List<OgImage>? ogImage;
  int? author;

  NewsModel(
      {this.id,
        this.date,
        this.slug,
        this.status,
        this.title,
        this.content,
        this.ogImage,
        this.author});

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    slug = json['slug'];
    status = json['status'];
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    content =
    json['content'] != null ? new Title.fromJson(json['content']) : null;
    // if (json['og_image'] != null) {
    //   ogImage = <OgImage>[];
    //   json['og_image'].forEach((v) {
    //     ogImage!.add(new OgImage.fromJson(v));
    //   });
    // }
    if (json['yoast_head_json'] != null &&
        json['yoast_head_json']['og_image'] != null) {
      ogImage = <OgImage>[];
      json['yoast_head_json']['og_image'].forEach((v) {
        ogImage!.add(OgImage.fromJson(v));
      });
    }
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['slug'] = this.slug;
    data['status'] = this.status;
    if (this.title != null) {
      data['title'] = this.title!.toJson();
    }
    if (this.content != null) {
      data['content'] = this.content!.toJson();
    }
    if (this.ogImage != null) {
      data['og_image'] = this.ogImage!.map((v) => v.toJson()).toList();
    }
    data['author'] = this.author;
    return data;
  }
}

class Title {
  String? rendered;

  Title({this.rendered});

  Title.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    return data;
  }
}

class OgImage {
  String? url;

  OgImage({this.url});

  OgImage.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}
