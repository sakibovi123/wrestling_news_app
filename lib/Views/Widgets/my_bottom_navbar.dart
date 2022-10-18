import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [
    const Home(),
    const WrestlingNews(),
    const Photos(),
    const Podcasts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigateBottomBar,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.orange.withAlpha(500),
        unselectedItemColor: Colors.grey.withAlpha(200),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: 'Wrestling News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_outlined),
            label: 'Photos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts_outlined),
            label: 'Podcasts',
          ),
        ],
      ),
    );
  }
}
