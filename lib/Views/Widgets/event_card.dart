import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final index;

  const EventCard({
    Key? key,
    required this.imageList,
    required this.titleList,
    required this.width,
    required this.eventTimeAndDate,
    required this.index,
  }) : super(key: key);

  final List<String> imageList;
  final List<String> titleList;
  final double width;
  final List<String> eventTimeAndDate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 6,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(10.0),
                bottomStart: Radius.circular(10.0),
              ),
              child: Image.asset(
                imageList[index],
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  titleList[index],
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width,
                  child: Text(
                    eventTimeAndDate[index],
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
