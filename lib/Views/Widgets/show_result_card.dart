import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

import '../../Provider/DarkThemeProvider.dart';

class ShowResultCard extends StatelessWidget {
  const ShowResultCard({
    Key? key,
    required this.width,
    required this.height,
    required this.resultTitle,
    required this.resultDescription,
  }) : super(key: key);

  final double width;
  final double height;
  final String resultTitle;
  final String resultDescription;

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return UnconstrainedBox(
      child: Container(
        width: width,
        height: height * 0.90,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                bottom: 0, // Space between underline and text
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 2.0, // Underline thickness
                  ),
                ),
              ),
              child: Text(
                resultTitle,
                style: TextStyle(
                  color: themeState.getDarkTheme ? Colors.white : Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Html(
                        data: resultDescription,
                        style: {
                          'body': Style(
                            fontFamily: 'NunitoSans',
                            color: themeState.getDarkTheme
                                ? Colors.white
                                : Colors.black,
                          ),
                        },
                      ),
                      // Text(
                      //   resultDescription,
                      //   style: const TextStyle(
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Expanded(
// child: ListView.builder(
// physics: const ClampingScrollPhysics(),
// shrinkWrap: true,
// itemCount: 8,
// itemBuilder: (context, index) {
// return Container(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Html(
// data: resultDescription,
// style: {
// 'body': Style(
// fontFamily: 'NunitoSans',
// ),
// },
// ),
// // Text(
// //   resultDescription,
// //   style: const TextStyle(
// //     fontSize: 16,
// //     fontWeight: FontWeight.w600,
// //   ),
// // ),
// const SizedBox(
// height: 10,
// ),
// ],
// ),
// );
// },
// ),
// ),
