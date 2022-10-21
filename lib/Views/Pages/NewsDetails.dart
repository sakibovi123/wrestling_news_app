import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class NewsDetailsCard extends StatefulWidget {
  const NewsDetailsCard({Key? key}) : super(key: key);

  @override
  State<NewsDetailsCard> createState() => _NewsDetailsCardState();
}

class _NewsDetailsCardState extends State<NewsDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://media4.s-nbcnews.com/j/newscms/2019_01/2705191/nbc-social-default_b6fa4fef0d31ca7e8bc7ff6d117ca9f4.nbcnews-fp-1200-630.png",
            fit: BoxFit.cover,
              height: 300,
            ),
            Container(
              height: 10,
              //color: const Color(0XFF111111),
            ),
            Container(
              height: 5,
              color: const Color(0XFFe8e8e8),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem ipsum dolor title",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 5,
              color: const Color(0XFFe8e8e8),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem  Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title /n Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem Ipsum Dolor Title Lorem  Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title Ipsum Dolor Title",
                  style: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            Container(
              height: 5,
              color: const Color(0XFFe8e8e8),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Related News",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                    crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (i) => const NewsCard())
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
