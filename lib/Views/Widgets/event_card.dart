import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';
import 'package:wrestling_news_app/Views/Pages/event_details.dart';

import '../../Provider/DarkThemeProvider.dart';

class EventCard extends StatelessWidget {
  final int id;
  final String date;
  final String event_logo;
  final String event_name;
  final String location;

  const EventCard(
      {Key? key,
      required this.id,
      required this.date,
      required this.event_logo,
      required this.event_name,
      required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(EventDetails.routeName, arguments: id);
      },
      child: Card(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.all(
              // topStart: Radius.circular(5.0),
              // bottomStart: Radius.circular(5.0),
              Radius.circular(10),
            ),
            color: themeState.getDarkTheme ? Color(0xFF191919) : Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 8),
                spreadRadius: -12,
                blurRadius: 26,
                color: Color.fromRGBO(149, 143, 143, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(5),
                  bottomStart: Radius.circular(5),
                ),
                // child: Image.network(event_logo,
                //   width: 130,
                //   height: 120,
                //   fit: BoxFit.fill,),
                child: event_logo != null
                    ? Image.network(
                        "https://wrestlingdb.pythonanywhere.com$event_logo",
                        width: 130,
                        height: 120,
                        fit: BoxFit.fill,
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
                        "https://thumbs.dreamstime.com/b/no-image-available-icon-flat-vector-no-image-available-icon-flat-vector-illustration-132482953.jpg",
                        width: 130,
                        height: 120,
                        fit: BoxFit.fill,
                      ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: themeState.getDarkTheme
                            ? Colors.white
                            : Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      width: 180,
                      child: Text(
                        event_name,
                        style: TextStyle(
                          color: themeState.getDarkTheme
                              ? Colors.white
                              : Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
