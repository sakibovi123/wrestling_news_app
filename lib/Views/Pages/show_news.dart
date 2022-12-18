import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Provider/DarkThemeProvider.dart';

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
  late PageController _pageViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;
  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _pageViewController.addListener(() {
      if (_pageViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }
      if (_pageViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    _pageViewController.removeListener(() {});
    super.dispose();
  }

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
    final themeState = Provider.of<DarkThemeProvider>(context);
    final news = Provider.of<NewsController>(context).allNews;
    if (!_isLoadingNews) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    } else {
      return Scaffold(
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              title: Text(
                'Feed',
              ),
              centerTitle: true,
              toolbarHeight: _showAppbar ? 40 : 0.0,
              backgroundColor: Colors.grey.withAlpha(200),
              actions: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: SwitchListTile(
                          title: themeState.getDarkTheme
                              ? Text('Darkmode')
                              : Text('Lightmode'),
                          secondary: Icon(
                            themeState.getDarkTheme
                                ? Icons.dark_mode_outlined
                                : Icons.light_mode_outlined,
                          ),
                          value: themeState.getDarkTheme,
                          onChanged: ((bool value) {
                            setState(() {
                              themeState.setDarkTheme = value;
                            });
                          }),
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
          ],
          body: PageView.builder(
            controller: _pageViewController,
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
        ),
      );
    }
  }
}
