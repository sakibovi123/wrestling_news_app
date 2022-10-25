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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            child: TabBar(
              labelPadding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 0,
                bottom: 0,
              ),
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              tabs: const [
                Tab(text: 'Events'),
                Tab(text: 'Matches'),
                Tab(text: 'Results'),
                Tab(text: 'Rosters'),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: tabController,
              children: const [
                Text('This is tab 1'),
                Text('This is tab 2'),
                Text('This is tab 3'),
                Text('This is tab 4'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavbar(
        index: 2,
      ),
    );
  }
}
