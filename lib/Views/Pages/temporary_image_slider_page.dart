import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class TemporaryImageSliderPage extends StatefulWidget {
  const TemporaryImageSliderPage({Key? key}) : super(key: key);

  @override
  State<TemporaryImageSliderPage> createState() =>
      _TemporaryImageSliderPageState();
}

class _TemporaryImageSliderPageState extends State<TemporaryImageSliderPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: VerticalImageSlider(),
      ),
    );
  }
}
