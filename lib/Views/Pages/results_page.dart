import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/ResultController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  bool _init = true;
  bool _isloading = false;

  @override
  void didChangeDependencies() async {
    if (_init) {
      _isloading = await Provider.of<ResultsController>(context, listen: false)
          .getResults();
    }
    _init = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final all_results = Provider.of<ResultsController>(context).results;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: ListView.builder(
              itemCount: all_results.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return ResultCards(
                    width: width,
                    height: height,
                    resultTitle: all_results![index].title!.rendered!,
                    id: all_results![index].id!);
              },
            ),
          ),
          CustomAppbar(title: 'Results'),
        ],
      ),
    );
  }
}
// ResultCards(width: width, height: height, eventName: 'WWE'),
