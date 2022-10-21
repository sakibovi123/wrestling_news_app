import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class Photos extends StatelessWidget {
  const Photos({Key? key}) : super(key: key);

  static const routeName = '/photos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavbar(
        index: 2,
      ),
    );
  }
}
