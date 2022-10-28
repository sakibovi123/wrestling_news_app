import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';

import 'Export.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const routeName = '/Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  NewsController newsController = NewsController();

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
          "Wrestling World",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 18.0,
          ),
        ),
        actions: [

          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationCard()));
            },
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
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            // height: double.infinity,
            color: Colors.white24,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  height: 10,
                ),
                //const Filter(),
                Container(
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                Text("Trending News",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                FutureBuilder(
                  future: newsController.getNews(),
                  builder: (context, snapShot) {
                    if (snapShot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapShot.data?.length,
                              itemBuilder: (context, item){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: NewsCard(title: snapShot.data?[item]['title']["rendered"]),
                                );
                          })
                      );
                    }
                    else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),

              ],
            ),
          ),
        ],
      ),

      // pages[0];
      //bottomNavigationBar: MyBottomNavbar(),

      bottomNavigationBar: const MyBottomNavbar(index: 0),
    );
  }
}
