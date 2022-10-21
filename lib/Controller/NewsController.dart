import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:wrestling_news_app/Model/NewsModel.dart';
import 'package:http/http.dart' as http;

class NewsController with ChangeNotifier{
  List<NewsModel> _news = [];


  Future<bool> getNews() async {
    var url = Uri.parse('https://wrestlingworld.co/wp-json/wp/v2/posts?categories=22');
    try{
      http.Response response = await http.get(url);
      var data = json.decode(response.body) as List;
      List<NewsModel> temp_obj = [];
      data.forEach((element) {
        NewsModel newsModel = NewsModel.fromJson(element);
        temp_obj.add(newsModel);
      });
      _news = temp_obj;
      notifyListeners();
      return true;
    }
    catch (e) {
      print("Something wrong inside the controller");
      print(e);
      return false;
    }
  }

  List<NewsController> get news {
    return [..._news];
  }

}