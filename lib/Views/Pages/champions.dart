import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class Champions extends StatefulWidget {
  const Champions({
    Key? key,
  }) : super(key: key);

  static const routeName = '/Champions';
  @override
  State<Champions> createState() => _ChampionsState();
}

class _ChampionsState extends State<Champions> {
  String eventName = 'WWE CHAMPIONSHIP';
  String currentChampion = 'ROMAN REIGNS';
  String since = 'APRIL 3, 2022';
  String days = '217';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return ChampionsCard(
                  width: width,
                  height: height,
                  eventName: eventName,
                  currentChampion: currentChampion,
                  since: since,
                  days: days,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
