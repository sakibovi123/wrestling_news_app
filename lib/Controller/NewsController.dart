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
        print(response.body);
        // Map<String, dynamic> resp = json.decode(response.body);
        return jsonDecode(response.body);
        // return Map<String, dynamic> json.decode(response.body);
      }
      else{
        return Future.error("Error Handling the request");
      }
    } catch(Exception){
      print(Exception);
      return Future.error("Error in the controller");
    }
  }
}

// class NewsController with ChangeNotifier {
//   List<NewsModel> _news = [];
//
//   Future<bool> getNews() async {
//     var url = Uri.parse("https://wrestlingworld.co/wp-json/wp/v2/posts?categories=22/");
//     // Token will given here //
//     try {
//       http.Response response = await http.get(url);
//       var data = json.decode(response.body) as List;
//       List<NewsModel> temp = [];
//       for (var element in data) {
//         NewsModel service = NewsModel.fromJson(element);
//         temp.add(service);
//       }
//       _news = temp;
//       notifyListeners();
//       print(response.body);
//       return true;
//     } catch (e) {
//       print("Error=> Error");
//       print(e);
//       return false;
//     }
//   }
//
//   List<NewsModel> get allNews {
//     return [..._news];
//   }
// }