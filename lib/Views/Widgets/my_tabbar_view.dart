import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/event_details.dart';

class MyTabBarView extends StatelessWidget {
  const MyTabBarView({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 120,
          child: TabBarView(
            controller: tabController,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetails(),
                    ),
                  );
                },
                child: Text('Tap here to navigate to Event Details'),
              ),
              Text('This is tab 2'),
              Text('This is tab 3'),
              Text('This is tab 4'),
            ],
          ),
        ),
      ],
    );
  }
}
