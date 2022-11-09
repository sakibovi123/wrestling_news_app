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
      body: Container(
        child: EventCard(
          id: 1,
          date: 'dd/mm/yyyy',
          event_logo:
              'https://i.pinimg.com/originals/a3/93/12/a39312ceee6e9722b3210a6406df4470.png',
          event_name: 'WRESTLEMANIA',
          location: 'USA',
        ),
      ),
    );
  }
}
