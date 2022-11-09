import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';

import 'Export.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _init = true;
  bool _isLoadingNews = false;

  @override
  void didChangeDependencies() async {
    if (_init) {
      _isLoadingNews =
          await Provider.of<NewsController>(context, listen: false).getNews();
    }
    _init = false;
    setState(() {});
    super.didChangeDependencies();
  }

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final news = Provider.of<NewsController>(context).allNews;
    if (!_isLoadingNews) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    } else {
      return Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          children: [
            // ListView.builder(
            //   physics: const ScrollPhysics(),
            //   itemCount: news.length,
            //   itemBuilder: (context, index) {
            //     return NewNewscardWidget(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //       title: news[index].title!.rendered!,
            //       content: news[index].content!.rendered!,
            //       image: news[index].ogImage ?? [],
            //       id: news[index].id!,
            //       // authorName: news[index].author!,
            //       date: 'November 5, 2022',
            //     );
            //   },
            // ),
            const ShowNewsPage(),
            const Photos(),
            const Champions(),
            const EventsPage(),
          ],
        ),
      );
    }
  }
}
