import 'dart:convert';
import 'package:http/http.dart' as http;

class ChampionController{
  String url = "https://wrestlingdb.pythonanywhere.com/api/champions/";

  Future getChampions() async {
    var response = await http.get(Uri.parse(url));
    if( response.statusCode == 200 ){
      print(response.statusCode);
      return json.decode(response.body);
    }
    else{
      Future.error("404 server error");
    }
  }
}