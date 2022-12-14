import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Controller/PhotoController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  PhotoController photoController = PhotoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      body: Stack(
        children: [
          FutureBuilder(
            future: photoController.getPhotos(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, i) {
                    return ImageGridView(
                        image: snapshot.data[i]["_image_link"]);
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          CustomAppbar(title: 'Photos'),
        ],
      ),
    );
  }
}
