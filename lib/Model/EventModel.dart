class EventModel {
  int? id;
  Null? eventLogo;
  String? slug;
  String? date;
  String? eventName;
  String? location;
  List<Matches>? matches;

  EventModel(
      {this.id,
        this.eventLogo,
        this.slug,
        this.date,
        this.eventName,
        this.location,
        this.matches});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventLogo = json['event_logo'];
    slug = json['slug'];
    date = json['date'];
    eventName = json['event_name'];
    location = json['location'];
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(new Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['event_logo'] = this.eventLogo;
    data['slug'] = this.slug;
    data['date'] = this.date;
    data['event_name'] = this.eventName;
    data['location'] = this.location;
    if (this.matches != null) {
      data['matches'] = this.matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matches {
  int? id;
  String? title;
  String? match;

  Matches({this.id, this.title, this.match});

  Matches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    match = json['match'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['match'] = this.match;
    return data;
  }
}
