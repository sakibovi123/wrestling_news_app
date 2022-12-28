import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/ChampionController.dart';

import '../../Provider/DarkThemeProvider.dart';
import '../Pages/Export.dart';

class Champions extends StatefulWidget {
  const Champions({
    Key? key,
  }) : super(key: key);

  static const routeName = '/Champions';
  @override
  State createState() => _ChampionsState();
}

ChampionController championController = ChampionController();

class _ChampionsState extends State {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: championController.getChampions(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      scrollDirection: Axis.vertical,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ChampionsCard(
                          width: width,
                          height: height,
                          titleName: snapshot.data[index]["title"],
                          currentChampion: snapshot.data[index]
                              ["current_champion"],
                          since: snapshot.data[index]["since"],
                          titleImage: snapshot.data[index]["title_image"],
                          championImage: snapshot.data[index]["champion_image"],
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CustomCircularProgressIndicator(
                          themeState: themeState),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
