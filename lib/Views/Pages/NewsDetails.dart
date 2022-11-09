import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class NewsDetailsCard extends StatefulWidget {
  const NewsDetailsCard({Key? key}) : super(key: key);
  static const routeName = "/news-details";
  @override
  State<NewsDetailsCard> createState() => _NewsDetailsCardState();
}

class _NewsDetailsCardState extends State<NewsDetailsCard> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final newsDetails =
    Provider.of<NewsController>(context).getNewsDetails(id as int);
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
            Image.network("https://e00-marca.uecdn.es/assets/multimedia/imagenes/2022/10/21/16663715357215.jpg",
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                newsDetails.title!.rendered!,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            Container(
              height: 5,
              color: const Color(0XFFe8e8e8),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.center,
                child: Html(
                  data: newsDetails.content!.rendered as String
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
            // Container(
            //   height: 400,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: GridView.count(
            //         crossAxisCount: 1,
            //       scrollDirection: Axis.horizontal,
            //       children: List.generate(10, (i) => const NewsCard())
            //     ),
            //   ),
            // ),
          ],
        ),
      )
    );
  }
}
