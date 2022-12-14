import 'package:flutter/material.dart';

import 'Export.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            children: const [
              LandingPage(),
              ShowNewsPage(),
              Photos(),
              Champions(),
              EventsPage(),
              ResultsPage(),
            ],
          ),
        ],
      ),
    );
  }
}
