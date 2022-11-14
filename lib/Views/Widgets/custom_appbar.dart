import 'dart:ui';

import 'package:flutter/material.dart';

typedef CustomCallBack = IconButton Function(Icons value);

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: MediaQuery.of(context),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
