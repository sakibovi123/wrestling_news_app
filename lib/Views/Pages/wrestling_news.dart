import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class WrestlingNews extends StatelessWidget {
  const WrestlingNews({Key? key}) : super(key: key);

  static const routeName = '/wrestlingNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavbar(
        index: 1,
      ),
    );
  }
}
