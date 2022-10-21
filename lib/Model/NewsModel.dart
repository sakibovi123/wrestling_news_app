class NewsModel {
  late int id;
  late String date;
  late String status;
  late String type;
  late String link;
  late String title;
  late String content;

  NewsModel(
      {
        required this.id,
        required this.date,
        required this.status,
        required this.type,
        required this.link,
        required this.title,
        required this.content});

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['status'] = this.status;
    data['type'] = this.type;
    data['link'] = this.link;
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.content != null) {
      data['content'] = this.content;
    }
    return data;
  }
}


