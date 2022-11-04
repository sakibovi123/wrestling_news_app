import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class Champions extends StatefulWidget {
  const Champions({
    Key? key,
  }) : super(key: key);

  static const routeName = '/Champions';
  @override
  State<Champions> createState() => _ChampionsState();
}

class _ChampionsState extends State<Champions> {
  String eventName = 'WWE Championship';
  String championName = 'Roman Reigns';
  String since = '03.04.2022  (142 days)';
  String rating = '8.97';
  String votes = '617';

  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return ChampionsCard(
            width: width,
            eventName: eventName,
            since: since,
            rating: rating,
            votes: votes,
          );
        },
      ),
      bottomNavigationBar: MyBottomNavbar(
        index: 3,
      ),
    );
  }
}
