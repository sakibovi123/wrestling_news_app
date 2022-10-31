import 'dart:convert';
import 'package:http/http.dart' as http;


class MatchController{
  String url = "https://wrestlingdb.pythonanywhere.com/api/cards/";

  Future<List> getMatches() async {
    var response = await http.get(Uri.parse(url));
    if( response.statusCode == 200 ){
      return json.decode(response.body);
    }
    else{
      return Future.error("Server Error!");
    }
  }
}