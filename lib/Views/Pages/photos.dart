import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  static const routeName = '/photos';

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: VerticalImageSlider(),
      bottomNavigationBar: const MyBottomNavbar(
        index: 2,
      ),
    );
  }
}
