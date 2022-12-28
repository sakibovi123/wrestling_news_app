import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/PhotoController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

import '../../Provider/DarkThemeProvider.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  PhotoController photoController = PhotoController();
  late PageController _pageViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;
  bool _init = true;
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
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            title: Text('Photos'),
            centerTitle: true,
            toolbarHeight: _showAppbar ? 40 : 0.0,
            backgroundColor: Colors.grey.withAlpha(200),
          ),
        ],
        body: FutureBuilder(
          future: photoController.getPhotos(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return PageView.builder(
                controller: _pageViewController,
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return ImageGridView(image: snapshot.data[i]["_image_link"]);
                },
              );
            } else {
              return Center(
                  child: CustomCircularProgressIndicator(
                themeState: themeState,
              ));
            }
          },
        ),
      ),
    );
  }
}
