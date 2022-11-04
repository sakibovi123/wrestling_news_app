import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:wrestling_news_app/Model/NewsModel.dart';
import 'package:http/http.dart' as http;


class NewsController with ChangeNotifier{
  String urlnews = "https://wrestlingworld.co/wp-json/wp/v2/posts?categories=22";
  List<NewsModel> _news = [];

  Future<bool> getNews() async {
    var url = Uri.parse(urlnews);
    // var token = storage.getItem('token');
    try {
      http.Response response = await http.get(url);
      print(response.body);
      var data = json.decode(response.body) as List;
      // print(data);
      List<NewsModel> temp = [];
      data.forEach((element) {
        NewsModel product = NewsModel.fromJson(element);
        temp.add(product);
      });
      _news = temp;
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
  List<NewsModel> get allNews {
    return [..._news];
  }

  NewsModel getNewsDetails(int id){
    return _news.firstWhere((element) => element.id == id);
  }


}
