import 'dart:ui';

import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  // const CustomAppbar({Key? key}) : super(key: key);
  const CustomAppbar({Key? key, this.title, this.icon}) : super(key: key);

  final Widget? title;
  final Widget? icon;

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    return Positioned(
      top: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            color: Colors.grey.withOpacity(0.2),
            alignment: Alignment.center,
            width: screenSize,
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 56,
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_outlined),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Container(
                  child: widget.title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}