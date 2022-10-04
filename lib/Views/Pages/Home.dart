import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Widgets/NewsCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined)
          ),
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
      bottomNavigationBar: const BottomAppBar(),
    );
  }
}
