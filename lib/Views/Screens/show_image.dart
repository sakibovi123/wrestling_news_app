import 'package:flutter/material.dart';

class ShowImage extends StatefulWidget {
  const ShowImage({Key? key, required this.image}) : super(key: key);

  final dynamic image;
  @override
  State<ShowImage> createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Scaffold(
        body: Center(
          child: Container(
            child: Image.network(
              widget.image,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
