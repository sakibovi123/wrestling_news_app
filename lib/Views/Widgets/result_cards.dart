import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class ResultCards extends StatefulWidget {
  const ResultCards({
    Key? key,
    required this.width,
    required this.height,
    required this.eventName,
  }) : super(key: key);

  final double width;
  final double height;
  final String eventName;

  @override
  State<ResultCards> createState() => _ResultCardsState();
}

class _ResultCardsState extends State<ResultCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      width: widget.width,
      height: widget.height * 0.20,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultDetails(),
            ),
          );
        },
        child: Container(
          width: widget.width * 0.95,
          height: widget.height * 0.20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 8),
                spreadRadius: -12,
                blurRadius: 26,
                color: Color.fromRGBO(149, 143, 143, 1),
              )
            ],
            color: Colors.black45,
            image: DecorationImage(
              image: NetworkImage(
                  'https://logos-world.net/wp-content/uploads/2021/11/WWE-Emblem.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.75),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Text(
              widget.eventName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 3,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
