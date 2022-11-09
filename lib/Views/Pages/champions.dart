import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Controller/ChampionController.dart';

import '../Pages/Export.dart';

class Champions extends StatefulWidget {
  const Champions({
    Key? key,
  }) : super(key: key);

  static const routeName = '/Champions';
  @override
  State<Champions> createState() => _ChampionsState();
}

ChampionController championController = ChampionController();

class _ChampionsState extends State<Champions> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: FutureBuilder(
        future: championController.getChampions(),
        builder: (context, snapshot) {
          if( snapshot.hasData ){
            return ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return ChampionsCard(
                  width: width,
                  height: height,
                  titleName: snapshot.data[index]["title"],
                  currentChampion: snapshot.data[index]["current_champion"],
                  since: snapshot.data[index]["since"],
                  titleImage: snapshot.data[index]["title_image"],
                  championImage: snapshot.data[index]["champion_image"],
                );
              },
            );
          }
          else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }


        }
      ),
    );
  }
}
