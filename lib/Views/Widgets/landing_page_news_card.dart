import 'package:flutter/material.dart';

class LandingPageNewsCard extends StatefulWidget {
  const LandingPageNewsCard({Key? key}) : super(key: key);

  @override
  State<LandingPageNewsCard> createState() => _LandingPageNewsCardState();
}

class _LandingPageNewsCardState extends State<LandingPageNewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(74, 144, 226, 1),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
            image: NetworkImage(
              'https://www.rollingstone.com/wp-content/uploads/2022/07/WWE-uses-a-unique-match-graphic-to-promote-Roman-Reigns-e1659043576817.jpeg?w=960',
            ),
            fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 12),
            spreadRadius: -10,
            blurRadius: 8,
            color: Color.fromRGBO(74, 144, 226, 1),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.31,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Container(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Sarya Texted Sasha Banks',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
