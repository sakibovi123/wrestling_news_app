import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String date;
  final String event_name;
  final String location;

  const EventCard({
    Key? key,
    required this.date,
    required this.event_name,
    required this.location
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      margin: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFe8e8e8)),
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.white70,
            blurRadius: 1,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(10.0),
                bottomStart: Radius.circular(10.0),
              ),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/WWE_%282014%29_logo.svg/1200px-WWE_%282014%29_logo.svg.png",
                fit: BoxFit.fill,
              ),
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
                  width: 280,
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
    );
  }
}
