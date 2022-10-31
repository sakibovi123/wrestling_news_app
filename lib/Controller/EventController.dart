import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wrestling_news_app/Model/EventModel.dart';

class EventController{
  String url = "https://wrestlingdb.pythonanywhere.com/api/events/";
  Future<List> getEvents() async {
    try{
      var response = await http.get(Uri.parse(url));
      if( response.statusCode == 200 ){
        return json.decode(response.body);
      }
      else{
        return Future.error("Not Allowed");
      }
    } catch(Exception){
      print(Exception);
      return Future.error("Server error!");
    }
  }
}