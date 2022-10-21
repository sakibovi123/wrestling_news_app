import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class Podcasts extends StatelessWidget {
  const Podcasts({Key? key}) : super(key: key);

  static const routeName = '/Podcasts';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomNavbar(
        index: 3,
      ),
    );
  }
}
