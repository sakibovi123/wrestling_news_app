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
    return UnconstrainedBox(
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
                  height: height * .40,
                  width: width,
                  child: ListView.builder(
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
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Html(data: content.substring(0, 600)),
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
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    const Text(
                      'By',
                      style: TextStyle(color: Colors.black45),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    // Text(
                    //   ,
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w700,
                    //       color: Colors.black45),
                    // ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(date),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
