class EventModel {
  String? date;
  String? title;
  String? matches;

  EventModel({this.date, this.title, this.matches});

  EventModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    title = json['title'];
    matches = json['matches'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['title'] = this.title;
    data['matches'] = this.matches;
    return data;
  }
}
