import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class PhotoController{
  String url = "https://wrestlingworld.co/wp-json/jet-cct/_photo_drop";

  void getPhotos() async{
    try{
      var response = await http.get(Uri.parse(url));

      if(response.statusCode == 200){
        print(jsonDecode(response.body));
      }
      else{
        return Future.error("502 Server Error");
      }
    } catch(e){
      print(e);
    }

  }
}