import 'package:flutter/material.dart';

import '../../Provider/DarkThemeProvider.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    Key? key,
    required this.themeState,
  }) : super(key: key);

  final DarkThemeProvider themeState;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(
        begin: 0.0,
        end: 1.0,
      ),
      duration: Duration(seconds: 2),
      builder: (context, value, _) => CircularProgressIndicator(
        value: value,
        backgroundColor: Colors.grey,
        color: themeState.getDarkTheme ? Colors.purple.shade500 : Colors.blue,
      ),
    );
  }
}
