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

  List<StoryData> stories = [
    StoryData(
      'Product 1',
      'https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_960_720.jpg',
    ),
    StoryData(
      'Product 2',
      'https://dummyimage.com/600x400/000/fff',
      'https://dummyimage.com/600x400/000/fff',
    ),
    StoryData(
      'Product 3',
      'https://pixabay.com/get/g77d47b23359554641677764d2b31d6c545be36ddddf9380166963935e7e1f4244f322c7ecc6506e4a1180f00c505c214_640.jpg',
      'https://pixabay.com/get/g77d47b23359554641677764d2b31d6c545be36ddddf9380166963935e7e1f4244f322c7ecc6506e4a1180f00c505c214_640.jpg',
    ),
    StoryData(
      'Product 4',
      'https://pixabay.com/get/ged4bc7781f54002756bc7a09ba86a743f77207c6ee97e54862622e56bd638c2f97fff7a65ac3f8f54b2581c00043d47b_640.jpg',
      'https://pixabay.com/get/ged4bc7781f54002756bc7a09ba86a743f77207c6ee97e54862622e56bd638c2f97fff7a65ac3f8f54b2581c00043d47b_640.jpg',
    ),
    StoryData(
      'Product 5',
      'https://pixabay.com/get/g8209f471ca0b85c7003a790c620fb68d77b8216973ee7697409760314d7b4bf13311728fb8d88ed8bea5614e00c92ebf_640.jpg',
      'https://pixabay.com/get/g8209f471ca0b85c7003a790c620fb68d77b8216973ee7697409760314d7b4bf13311728fb8d88ed8bea5614e00c92ebf_640.jpg',
    ),
    StoryData(
      'Product 6',
      'https://pixabay.com/get/gb86c3ef96e625e6bc27bee43f20f94dbbc30fd59867bdcf79f60da9e0259b1f68806471a56fd4feb699abf4dd85a25e4_640.jpg',
      'https://pixabay.com/get/gb86c3ef96e625e6bc27bee43f20f94dbbc30fd59867bdcf79f60da9e0259b1f68806471a56fd4feb699abf4dd85a25e4_640.jpg',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const MyBottomNavbar(index: 0),
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

          Row(
            children: [
              storyButton(stories[0], context),
              storyButton(stories[1], context),
              storyButton(stories[1], context),
              storyButton(stories[1], context),

            ],
          ),

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
    )
      //
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         width: double.infinity,
      //         // height: double.infinity,
      //         color: Colors.white24,
      //         child: Column(
      //           // ignore: prefer_const_literals_to_create_immutables
      //           children: [
      //             Container(
      //               height: 10,
      //             ),
      //
      //             Column(
      //               children: [
      //                 Container(
      //                   width: double.infinity,
      //                   height: 130.0,
      //                   child: ListView(
      //                     scrollDirection: Axis.horizontal,
      //                     children: [
      //                       storyButton(stories[0], context),
      //                       storyButton(stories[1], context),
      //                       storyButton(stories[2], context),
      //                       storyButton(stories[3], context),
      //                       storyButton(stories[4], context),
      //                       storyButton(stories[5], context),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //
      //             const Filter(),
      //             Container(
      //               height: 20,
      //             ),
      //             // ignore: prefer_const_constructors
      //             Text("Trending News",
      //                 style: const TextStyle(
      //                   fontSize: 18.0,
      //                   fontWeight: FontWeight.bold,
      //                 )),
      //             const Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: NewsCard(),
      //             ),
      //             const Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: NewsCard(),
      //             ),
      //             const Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: NewsCard(),
      //             ),
      //             const Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: NewsCard(),
      //             ),
      //           ],
      //         ),
      //
      //       ),
      //     ),
      //   ],
      // ),

      // pages[0];
      //bottomNavigationBar: MyBottomNavbar(),


    );
  }
}
