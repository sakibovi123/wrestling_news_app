import 'package:flutter/material.dart';

import '../Widgets/my_bottom_navbar.dart';
import '../Widgets/my_tabbar_view.dart';
class WrestlingNews extends StatefulWidget {
  const WrestlingNews({Key? key}) : super(key: key);

  static const routeName = '/photos';

  @override
  State<WrestlingNews> createState() => _PhotosState();
}

class _PhotosState extends State<WrestlingNews> with TickerProviderStateMixin {
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
