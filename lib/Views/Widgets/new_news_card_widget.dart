import 'package:flutter/material.dart';

class NewNewscardWidget extends StatefulWidget {
  const NewNewscardWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.mainImage,
    required this.bodyTitle,
    required this.bodyDetails,
    required this.footerTitle,
    required this.footerBody,
    required this.authorName,
    required this.date,
  }) : super(key: key);

  final double width;
  final double height;
  final String mainImage;
  final String bodyTitle;
  final String bodyDetails;
  final String footerTitle;
  final String footerBody;
  final String authorName;
  final String date;

  @override
  State<NewNewscardWidget> createState() => _NewNewscardWidgetState();
}

class _NewNewscardWidgetState extends State<NewNewscardWidget> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 5,
      scrollDirection: Axis.vertical,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return UnconstrainedBox(
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, //color of shadow
                  spreadRadius: 0.5,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: widget.height * .28,
                      width: widget.width,
                      child: Image.network(
                        widget.mainImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      widget.bodyTitle,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      widget.bodyDetails,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text(
                          'By',
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.authorName,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black45),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(widget.date),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
