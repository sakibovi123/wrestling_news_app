import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  static const routeName = '/photos';

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: MyTabBarView(tabController: tabController),
      bottomNavigationBar: const MyBottomNavbar(
        index: 2,
      ),
    );
  }
}
