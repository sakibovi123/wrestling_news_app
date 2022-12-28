import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/DarkThemeProvider.dart';
import '../Pages/Export.dart';

class ChampionsCard extends StatelessWidget {
  final double width;
  final double height;
  final String titleName;
  final String currentChampion;
  final String since;
  final String? titleImage;
  final String? championImage;

  const ChampionsCard(
      {Key? key,
      required this.width,
      required this.height,
      required this.titleName,
      required this.currentChampion,
      required this.since,
      this.titleImage,
      this.championImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return UnconstrainedBox(
      child: Container(
        margin: EdgeInsets.only(bottom: 10, top: 5),
        width: width * 0.95,
        height: height * 0.30,
        decoration: BoxDecoration(
          color: themeState.getDarkTheme ? Color(0xFF191919) : Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 8),
              spreadRadius: -12,
              blurRadius: 26,
              color: Color.fromRGBO(149, 143, 143, 1),
            ),
          ],
        ),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                width: width * 0.20,
                height: height * 0.20,
                child: titleImage != null
                    ? Image.network(
                        'https://wrestlingdb.pythonanywhere.com/$titleImage',
                        fit: BoxFit.contain,
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                          return child;
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return Center(
                              child: CustomCircularProgressIndicator(
                                  themeState: themeState),
                            );
                          }
                        },
                      )
                    : Image.network(
                        "https://wallpapercave.com/wp/wp2092436.jpg",
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                          return child;
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return Center(
                              child: CustomCircularProgressIndicator(
                                  themeState: themeState),
                            );
                          }
                        },
                      ),
              ),
              Container(
                height: height * .28,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: width * 0.5,
                      color: const Color(0xFFce061e),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(
                          titleName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xfffffffff),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: width * 0.5,
                      child: Column(
                        children: [
                          Text(
                            'CUREENT CHAMPION: $currentChampion',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: themeState.getDarkTheme
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          Text(
                            'SINCE: $since',
                            style: TextStyle(
                              color: themeState.getDarkTheme
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: width * 0.20,
                height: height * 0.20,
                child: championImage != null
                    ? Image.network(
                        'https://wrestlingdb.pythonanywhere.com/$championImage',
                        fit: BoxFit.contain,
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                          return child;
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return Center(
                              child: CustomCircularProgressIndicator(
                                  themeState: themeState),
                            );
                          }
                        },
                      )
                    : Image.network(
                        "https://t4.ftcdn.net/jpg/02/51/95/53/360_F_251955356_FAQH0U1y1TZw3ZcdPGybwUkH90a3VAhb.jpg",
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                          return child;
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
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
      ),
    );
  }
}
