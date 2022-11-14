import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';

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
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              title: Text('Champions'),
              centerTitle: true,
              toolbarHeight: 40.0,
              backgroundColor: Colors.grey,
            ),
          ],
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  // width: width,
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 10),
                      itemCount: newsDetails.ogImage!.length,
                      itemBuilder: (context, i) {
                        return Image.network(
                          newsDetails.ogImage![0].url!,
                          fit: BoxFit.cover,
                          height: 300,
                        );
                      }),
                ),
                // Image.network("https://e00-marca.uecdn.es/assets/multimedia/imagenes/2022/10/21/16663715357215.jpg",
                // fit: BoxFit.cover,
                //   height: 300,
                // ),

                // Container(
                //   height: 5,
                //   color: const Color(0XFFe8e8e8),
                // ),
                SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    newsDetails.title!.rendered!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.1,
                      fontFamily: 'Khand-Bold',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.center,
                    child: Html(
                      data: newsDetails.content!.rendered!,
                      style: {
                        "body": Style(
                            fontSize: const FontSize(16),
                            fontFamily: 'NunitoSans'),
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
