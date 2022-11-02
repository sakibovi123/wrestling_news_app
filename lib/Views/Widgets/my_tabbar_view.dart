import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/EventController.dart';
import 'package:wrestling_news_app/Controller/MatchController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';
import 'package:wrestling_news_app/Views/Pages/event_details.dart';

import 'event_card.dart';

class MyTabBarView extends StatefulWidget {

  MyTabBarView({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  State<MyTabBarView> createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView> {
  // EventController eventController = EventController();
  MatchController matchController = MatchController();

  bool _init = true;

  bool _isLoadingEvents = false;

  @override
  void didChangeDependencies() async {
    if (_init) {
      _isLoadingEvents = await Provider.of<EventController>(context).getEvents();

      setState(() {});
    }
    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventController>(context).events;
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
            controller: widget.tabController,
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
            controller: widget.tabController,
            children: [
              // Events
              ListView.builder(
                physics: const ClampingScrollPhysics(),
                itemCount: events.length,
                  itemBuilder: (ctx, i) => EventCard(id: events[i].id as int,
                      date: events[i].date as String,
                      event_name: events[i].eventName as String,
                      location: events[i].location as String),
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
