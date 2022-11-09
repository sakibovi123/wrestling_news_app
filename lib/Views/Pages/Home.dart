import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';

import 'Export.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          children: const [
            ShowNewsPage(),
            Photos(),
            Champions(),
            EventsPage(),
            ResultsPage(),
          ],
        ),
      );
    }
  }

