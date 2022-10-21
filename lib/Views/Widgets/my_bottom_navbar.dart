import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black45,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Home.routeName);
            },
            icon: const Icon(Icons.home_outlined),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, WrestlingNews.routeName);
            },
            icon: const Icon(Icons.newspaper_outlined),
          ),
          label: 'Wrestling News',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Photos.routeName);
            },
            icon: const Icon(Icons.photo_outlined),
          ),
          label: 'Photos',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Podcasts.routeName);
            },
            icon: const Icon(Icons.podcasts_outlined),
          ),
          label: 'Podcasts',
        ),
      ],
    );
  }
}
