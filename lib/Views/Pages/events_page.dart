import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return EventCard(
                  id: 2,
                  date: 'vasada',
                  event_logo: '',
                  event_name: 'asdaas',
                  location: 'adadasdas',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
