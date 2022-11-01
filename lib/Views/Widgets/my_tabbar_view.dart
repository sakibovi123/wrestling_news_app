import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Controller/EventController.dart';
import 'package:wrestling_news_app/Controller/MatchController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';
import 'package:wrestling_news_app/Views/Pages/event_details.dart';

import 'event_card.dart';

class MyTabBarView extends StatelessWidget {
  EventController eventController = EventController();
  MatchController matchController = MatchController();

  MyTabBarView({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
          width: double.infinity,
          height: 800,
          child: TabBarView(
            controller: tabController,
            children: [
              // Events
              FutureBuilder(
                future: eventController.getEvents(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, item) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EventDetails()),
                            );
                          },
                          child: EventCard(
                            date: snapshot.data?[item]["date"],
                            event_name: snapshot.data?[item]["event_name"],
                            location: snapshot.data?[item]["location"],
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              // Matches
              FutureBuilder(
                future: matchController.getMatches(),
                builder: (context, output) {
                  if (output.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: output.data?.length,
                        itemBuilder: (context, item) {
                          return Text("Hello world");
                        },
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              // Results
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TemporaryImageSliderPage()),
                  );
                },
                child: Text('This is tab 3'),
              ),
              // Rosters
              Text('This is tab 4'),
            ],
          ),
        ),
      ],
    );
  }
}
