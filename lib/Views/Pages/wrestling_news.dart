import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class WrestlingNews extends StatefulWidget {
  const WrestlingNews({Key? key}) : super(key: key);

  static const routeName = '/wrestlingNews';

  @override
  State<WrestlingNews> createState() => _WrestlingNewsState();
}

class _WrestlingNewsState extends State<WrestlingNews> {
  var titleList = [
    'Hell In a Cell',
    'Money In The Bank',
    'Royal Rumble',
    'Summer Slam',
    'Wrestlemania',
    'Hell In a Cell',
    'Money In The Bank',
    'Royal Rumble',
    'Summer Slam',
    'Wrestlemania',
  ];

  var imageList = [
    'assets/images/hell-in-a-cell.jpg',
    'assets/images/money-in-the-bank.jpg',
    'assets/images/royal-rumble.jpg',
    'assets/images/summer-slam.jpg',
    'assets/images/wrestlemania.jpg',
    'assets/images/hell-in-a-cell.jpg',
    'assets/images/money-in-the-bank.jpg',
    'assets/images/royal-rumble.jpg',
    'assets/images/summer-slam.jpg',
    'assets/images/wrestlemania.jpg',
  ];

  var eventTimeAndDate = [
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
    'dd/mm/yyyy',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RosterPage()));
            },
            child: EventCard(
              imageList: imageList,
              titleList: titleList,
              width: width,
              eventTimeAndDate: eventTimeAndDate,
              index: index,
            ),
          );
        },
      ),
      bottomNavigationBar: const MyBottomNavbar(
        index: 1,
      ),
    );
  }
}
