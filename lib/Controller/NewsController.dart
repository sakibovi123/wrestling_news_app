import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:wrestling_news_app/Model/NewsModel.dart';
import 'package:http/http.dart' as http;


class NewsController with ChangeNotifier {
  List<NewsModel> _news = [];

  Future<bool> getNews() async {
    var url = Uri.parse("https://wrestlingworld.co/wp-json/wp/v2/posts?categories=22");
    // Token will given here //
    try {
      http.Response response = await http.get(url);

      var data = json.decode(response.body) as List;
      List<NewsModel> temp = [];
      for (var element in data) {
        NewsModel service = NewsModel.fromJson(element);
        temp.add(service);
      }
      _news = temp;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  List<NewsModel> get allNews {
    return [..._news];
  }
}