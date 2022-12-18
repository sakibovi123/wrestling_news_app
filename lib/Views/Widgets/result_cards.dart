import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class ResultCards extends StatelessWidget {
  final double width;
  final double height;
  final int id;
  final String resultTitle;

  const ResultCards({
    Key? key,
    required this.id,
    required this.width,
    required this.height,
    required this.resultTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      width: width,
      height: height * 0.20,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ResultDetails.routeName, arguments: id);
        },
        child: Container(
          width: width * 0.95,
          height: height * 0.20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 8),
                spreadRadius: -12,
                blurRadius: 26,
                color: Color.fromRGBO(149, 143, 143, 1),
              )
            ],
            color: Colors.black45,
            image: DecorationImage(
              image: const NetworkImage(
                'https://upload.wikimedia.org/wikipedia/en/1/1a/ROH_World_Six-Man_Tag_Team_Championship.jpeg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.75),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Text(
              resultTitle.toUpperCase(),
              style: const TextStyle(
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
