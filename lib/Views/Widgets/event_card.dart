import 'package:flutter/material.dart';
import 'package:wrestling_news_app/Views/Pages/event_details.dart';

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
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(EventDetails.routeName, arguments: id);
      },
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(10.0),
                bottomStart: Radius.circular(10.0),
              ),
              // child: Image.network(event_logo,
              //   width: 130,
              //   height: 120,
              //   fit: BoxFit.fill,),
              child: Image.network(
                "https://wrestlingdb.pythonanywhere.com$event_logo",
                width: 130,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
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
                      style: const TextStyle(
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
    );
  }
}
