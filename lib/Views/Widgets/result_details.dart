import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class ResultDetails extends StatefulWidget {

  static const routeName = "/show-results";

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
          PageView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            controller: pageController,
            itemBuilder: (context, index) {
              return ShowResultCard(
                width: width,
                height: height,
                resultTitle: 'WWE Raw Results, Oct 31, 2022',
                resultDescription:
                    'Women\'s Tag Team Championship: Alexa Bliss & Asuka def. Damage CTRL (Iyo Sky & Dakota Kai) (c) - TITLE CHANGE!!!',
              );
            },
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 35,
              margin: EdgeInsets.only(right: 10, bottom: 20),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {});
                  pageController.animateToPage(
                    _initialPage,
                    curve: Curves.decelerate,
                    duration: Duration(milliseconds: 500),
                  );
                },
                child: Icon(
                  Icons.arrow_upward_outlined,
                  size: 18,
                ),
              ),
            ),
          ),
          CustomAppbar(),
        ],
      ),
    );
  }
}
//
