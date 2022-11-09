import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class ResultDetails extends StatefulWidget {
  const ResultDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<ResultDetails> createState() => _ResultDetailsState();
}

class _ResultDetailsState extends State<ResultDetails> {
  int _initialPage = 0;
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
        initialPage: _initialPage, keepPage: true, viewportFraction: 1.0);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: ShowResultCard(
              width: width,
              height: height,
              resultTitle: 'WWE Raw Results, Oct 31, 2022',
              resultDescription:
                  'Women\'s Tag Team Championship: Alexa Bliss & Asuka def. Damage CTRL (Iyo Sky & Dakota Kai) (c) - TITLE CHANGE!!!',
            ),
          ),
          CustomAppbar(),
        ],
      ),
    );
  }
}
//
