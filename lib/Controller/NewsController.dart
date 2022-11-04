import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:wrestling_news_app/Model/NewsModel.dart';
import 'package:http/http.dart' as http;


class NewsController{
  String url = "https://wrestlingworld.co/wp-json/wp/v2/posts?categories=22";
  Future<List> getNews() async {
    try{
      var response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        return jsonDecode(response.body);
      }
      else{
        return Future.error("Error Handling the request");
      }
    } catch(Exception){
      print(Exception);
      return Future.error("Error in the controller");
    }
  }


  Future getNewsDetails(int newsId) async {
    try{
      var response = await http.get(Uri.parse("https://wrestlingworld.co/wp-json/wp/v2/posts/{$newsId}"));
      if ( response.statusCode == 200 ){
        return jsonDecode(response.body);
      }
      else{
        Future.error("404 Server Error!");
      }
    } catch(Exception){
      print(Exception);
    }
  }


}
