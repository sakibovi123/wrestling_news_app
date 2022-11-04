import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:wrestling_news_app/Views/Pages/NewsDetails.dart';

class NewsCard extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final List img;

  const NewsCard({
    required this.id,
    required this.title,
    required this.description,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        Navigator.of(context).pushNamed(NewsDetailsCard.routeName, arguments: id);
      },
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          color: const Color(0xFFf5f5f5),
          height: 500.0,
          padding: const EdgeInsets.all(10.0),
          //width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image.network(img),
              Flexible(
                child: ListView.builder(
                  itemCount: img.length,
                  itemBuilder: (context, i){
                    return Image.network(
                      img[0].url,
                      height: 120,
                      width: double.infinity
                    );
                  },
                  // child: Image.asset(
                  //   img,
                  //   height: 150.0,
                  //   width: double.infinity,
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Html(
                    data: description.substring(0, 200)
              ),),
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
                    child: Text(
                      "Author: John Robertson",
                      style:
                      TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Posted: 10/22/2052",
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Vote: 10",
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: IconButton(
              //             onPressed: () {}, icon: const Icon(Icons.arrow_upward)),
              //       ),
              //     ),
              //     const Padding(
              //       padding: EdgeInsets.all(10.0),
              //       child: Text("23"),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: IconButton(
              //           onPressed: () {}, icon: const Icon(Icons.arrow_downward)),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}