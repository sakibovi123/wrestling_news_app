import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/EventController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  bool _init = true;
  bool _isloading = false;

  @override
  void didChangeDependencies() async {
    if (_init) {
      _isloading = await Provider.of<EventController>(context, listen: false)
          .getEvents();
    }
    _init = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final all_events = Provider.of<EventController>(context).events;

    if (!_isloading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    } else {
      return Scaffold(
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              title: Text('Events'),
              centerTitle: true,
              toolbarHeight: 40.0,
              backgroundColor: Colors.grey,
            ),
          ],
          body: Column(
            children: [
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: all_events.length,
                  itemBuilder: (context, index) {
                    return EventCard(
                      id: all_events![index].id!,
                      date: all_events![index].date!,
                      event_logo: all_events![index].eventLogo!,
                      event_name: all_events![index].eventName!,
                      location: all_events![index].location!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
