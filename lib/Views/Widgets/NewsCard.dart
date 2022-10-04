import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        color: const Color(0xFFf5f5f5),
        height: 350.0,
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/digital2.png",
              height: 150.0,
            ),
            const Text("Lorem Ipsum Dolor Lorem lorem ipsum",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                )),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  "Lorem ipsum dolor lorem ipsum dolor dolor ipsum lorem ipsum dolor dolor ipsum lorem, lorem ipsum dolor dolor dolor dolor dolor dolor dolor... read more..."),
            ),
            Container(
              height: 15.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Author: Name",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Posted: 10/22/2052",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Vote: 10",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
