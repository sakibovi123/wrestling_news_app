import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';
import 'package:wrestling_news_app/Controller/ResultController.dart';

import '../Pages/Export.dart';

class ResultDetails extends StatefulWidget {
  static const routeName = "/result-details";
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
    final id = ModalRoute.of(context)?.settings.arguments;
    final resultDetails =
      Provider.of<ResultsController>(context).getResultDetails(id as int);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: ShowResultCard(
              width: width,
              height: height,
              resultTitle: resultDetails.title!.rendered!,
              resultDescription: resultDetails.content!.rendered!,
            ),
          ),
          CustomAppbar(),
        ],
      ),
    );
  }
}