class MatchModel {
  String? matchType;
  String? match;
  String? location;

  MatchModel({this.matchType, this.match, this.location});

  MatchModel.fromJson(Map<String, dynamic> json) {
    matchType = json['match_type'];
    match = json['match'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['match_type'] = this.matchType;
    data['match'] = this.match;
    data['location'] = this.location;
    return data;
  }
}
