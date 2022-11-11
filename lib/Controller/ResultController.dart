import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Model/ResultModel.dart';


class ResultsController with ChangeNotifier{
  String url = "https://wrestlingworld.co/wp-json/wp/v2/quick_results";

  List<ResultModel> _results = [];

  Future<bool> getResults() async {
    try{
      var response = await http.get(Uri.parse(url));
      if ( response.statusCode == 200 ){
        var data = json.decode(response.body);
        List<ResultModel> temp = [];
        data.forEach((element){
          ResultModel resultModel = ResultModel.fromJson(element);
          temp.add(resultModel);
        });
        _results = temp;
        notifyListeners();
        Future.error(response.body);
        return true;
      }
      else{
        return false;
      }
    } catch(e){
      Future.error(e);
      return false;
    }
  }

  List<ResultModel> get results {
    return [..._results];
  }

  ResultModel getResultDetails(int id){
    return _results.firstWhere((element) => element.id == id);
  }
}