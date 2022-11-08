import 'package:flutter/material.dart';

class ShowResultCard extends StatelessWidget {
  const ShowResultCard({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: width,
        height: height * 0.8,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: 0, // Space between underline and text
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 2.0, // Underline thickness
                  ),
                ),
              ),
              child: Text(
                "WWE Raw Results, Oct 31, 2022",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Women\'s Tag Team Championship: Alexa Bliss & Asuka def. Damage CTRL (Iyo Sky & Dakota Kai) (c) - TITLE CHANGE!!!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
