import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class ResultDetails extends StatelessWidget {
  const ResultDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: PageView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return ShowResultCard(width: width, height: height);
        },
      ),
    );
  }
}
//
