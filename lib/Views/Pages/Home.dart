import 'package:flutter/material.dart';

import 'Export.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Wrestling",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 18.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_outlined),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              icon: const Icon(Icons.account_circle_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              // height: double.infinity,
              color: Colors.white24,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text("Trending News",
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NewsCard(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NewsCard(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NewsCard(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NewsCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // pages[0];
      //bottomNavigationBar: MyBottomNavbar(),
    );
  }
}
