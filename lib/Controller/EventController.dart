import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wrestling_news_app/Model/EventModel.dart';

class EventController with ChangeNotifier{
  String url = "https://wrestlingdb.pythonanywhere.com/api/events/";
  List<EventModel> _events = [];

  Future<bool> getEvents() async {
    var url = Uri.parse("https://wrestlingdb.pythonanywhere.com/api/events/");
    // var token = storage.getItem('token');
    try {
      http.Response response = await http.get(url);
      print(response.body);
      var data = json.decode(response.body) as List;
      // print(data);
      List<EventModel> temp = [];
      data.forEach((element) {
        EventModel product = EventModel.fromJson(element);
        temp.add(product);
      });
      _events = temp;
      notifyListeners();
      return true;
    } catch (e) {
      print("e getProducts");
      print(e);
      return false;
    }
  }

  List<EventModel> get events {
    return [..._events];
  }

  EventModel getEventDetails(int id){
    return _events.firstWhere((element) => element.id == id);
  }


  //
  // Future<List> getEvents() async {
  //   try{
  //     var response = await http.get(Uri.parse(url));
  //     if( response.statusCode == 200 ){
  //       return json.decode(response.body);
  //     }
  //     else{
  //       return Future.error("Not Allowed");
  //     }
  //   } catch(Exception){
  //     print(Exception);
  //     return Future.error("Server error!");
  //   }
  // }


  // Future getEventById(int id) async {
  //   try{
  //     var response = await http.get(Uri.parse("https://wrestlingdb.pythonanywhere.com/api/events/{$id}/"));
  //     if( response.statusCode == 200 ){
  //       return json.decode(response.body);
  //     }
  //     else{
  //       return Future.error("API ERROR");
  //     }
  //   }
  //   catch(Exception){
  //     Future.error(Exception);
  //   }
  // }

}