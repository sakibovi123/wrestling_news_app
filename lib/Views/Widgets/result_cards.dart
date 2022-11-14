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
                  'https://wrestlingworld.co/wp-content/uploads/2019/05/ww-star-280x96.png?fbclid=IwAR1nY6M3v4zQO6RIhKyy0m_TQlv73PbNKqDLUqcQxzg1FTF2BlkVLgoYyVo'),
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
