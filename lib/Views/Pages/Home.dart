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
  bool _init = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() async{
    if (_init) {
      _isLoading = await Provider.of<NewsController>(context, listen: false).getNews();
    }
    _init = false;
    super.didChangeDependencies();
  }


  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final all_news = Provider.of<NewsController>(context).allNews;
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
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      child: GridView.count(
                        crossAxisCount: 1,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(all_news.length, (i){
                          return NewsCard(title: all_news[i].title);
                        }

                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

      // pages[0];
      //bottomNavigationBar: MyBottomNavbar(),

      bottomNavigationBar: const MyBottomNavbar(index: 0),
    );
  }
}
