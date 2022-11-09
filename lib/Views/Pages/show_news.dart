import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Controller/NewsController.dart';
import 'Export.dart';

class ShowNewsPage extends StatefulWidget {
  const ShowNewsPage({Key? key}) : super(key: key);

  @override
  State<ShowNewsPage> createState() => _ShowNewsPageState();
}

class _ShowNewsPageState extends State<ShowNewsPage> {
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

  @override
  Widget build(BuildContext context) {
    final news = Provider.of<NewsController>(context).allNews;
    if (!_isLoadingNews) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    } else {
      return Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              physics: const ScrollPhysics(),
              itemCount: news.length,
              scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              itemBuilder: (context, index) {
                return NewNewscardWidget(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  title: news[index].title!.rendered!,
                  content: news[index].content!.rendered!,
                  image: news[index].ogImage ?? [],
                  id: news[index].id!,
                  // authorName: news[index].author!,
                  date: 'November 5, 2022',
                );
              },
            ),
          ],
        ),
      );
    }
  }
}
