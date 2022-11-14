import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewNewscardWidget extends StatelessWidget {
  const NewNewscardWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.date,
    required this.title,
    required this.id,
    required this.content,
    this.image,
    // required this.authorName
  }) : super(key: key);

  final double width;
  final double height;
  final int id;
  final String title;
  final List? image;
  final String date;
  final String content;

  // final int authorName;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle1 = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFc3232a),
      shape: const StadiumBorder(),
      minimumSize: const Size(200, 50),
    );
    final ButtonStyle buttonStyle2 = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFf5f5f5),
      shape: const StadiumBorder(),
      minimumSize: const Size(10, 50),
    );
    return Stack(
      children: [
        UnconstrainedBox(
          child: Container(
            width: width,
            height: height * 0.9,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: height * .35,
                      width: width,
                      child: ListView.builder(
                          padding: EdgeInsets.only(top: 0),
                          itemCount: image!.length,
                          itemBuilder: (context, i) {
                            return Image.network(
                              image![0].url,
                              fit: BoxFit.fill,
                            );
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 1.1,
                        fontFamily: 'Khand-Bold',
                      ),
                    ),
                  ),

                  Container(
                    child: Html(
                      data: content.substring(0, 200),
                      style: {
                        "body": Style(
                            fontSize: const FontSize(16),
                            fontFamily: 'NunitoSans'),
                      },
                    ),
                    // child: Text(
                    //   content,
                    //   style: const TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.w300,
                    //     fontFamily: 'NunitoSans',
                    //   ),
                    // ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        // Text(
                        //   ,
                        //   style: TextStyle(
                        //       fontWeight: FontWeight.w700,
                        //       color: Colors.black45),
                        // ),

                        Text(date),
                      ],
                    ),
                  ),
                  // UnconstrainedBox(
                  //   child: Container(
                  //     width: width * 0.95,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: ElevatedButton(
                  //             onPressed: () {},
                  //             child: Icon(
                  //               Icons.share,
                  //               color: Colors.blueGrey,
                  //             ),
                  //             style: buttonStyle2,
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: ElevatedButton(
                  //             onPressed: () {},
                  //             child: Text("Show Details"),
                  //             style: buttonStyle1,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://live.staticflickr.com/3301/3250207699_4800cbf590_b.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                  ),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(13),
                            child: Text(
                              'Read More',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
