import 'package:flutter/material.dart';

class ShowResultCard extends StatelessWidget {
  const ShowResultCard({
    Key? key,
    required this.width,
    required this.height,
    required this.resultTitle,
    required this.resultDescription,
  }) : super(key: key);

  final double width;
  final double height;
  final String resultTitle;
  final String resultDescription;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: width,
        height: height * 0.95,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
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
                resultTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                          resultDescription,
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
