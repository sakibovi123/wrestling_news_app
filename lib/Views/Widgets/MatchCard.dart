import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final String matchTitle;
  final String match;


  const MatchCard({
    Key? key,
    required this.matchTitle,
    required this.match
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return UnconstrainedBox(
      child: Card(
        child: Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(10),
          height: 165,
          width: width * 0.95,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: const NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/1/1a/ROH_World_Six-Man_Tag_Team_Championship.jpeg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.darken),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                matchTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                match,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // Text(
              //   'VS',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 28,
              //       fontWeight: FontWeight.w500),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Text(
              //   'Bayley, Dakota Kai & IYO SKY',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 18,
              //       fontWeight: FontWeight.w500),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
