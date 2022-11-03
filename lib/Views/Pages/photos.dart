import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:wrestling_news_app/Controller/PhotoController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  static const routeName = '/photos';

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  PhotoController photoController = PhotoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: photoController.getPhotos(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index){
                return VerticalCardPager(titles: snapshot.data?[index]["_name"],
                    images: snapshot.data?[index]["_image_link"]);
              },
            );

          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: const MyBottomNavbar(
        index: 2,
      ),
    );
  }
}
