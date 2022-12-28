import 'dart:async';

import 'package:flutter/material.dart';

import '../Pages/Export.dart';
import '../Pages/Export.dart';
import 'package:provider/provider.dart';
import '../../Provider/DarkThemeProvider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Home()))
            });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: themeState.getDarkTheme ? Color(0xFF212121) : Colors.white,
      // decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomRight,
      //         colors: [Color(0xFF3065E7), Color(0xFF7486FD)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            // "https://wrestlingworld.co/wp-content/uploads/2019/05/ww-star-280x96.png",
            'https://media.zenfs.com/en/business-wire.com/a0992cbc7b70f60bdc482651d9dbdae0',
            height: 300.0,
            width: 300.0,
          ),
          // const Text(
          //   "A Great Wrestling App",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //       color: Colors.white,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 18.0),
          // ),
          CustomCircularProgressIndicator(themeState: themeState),
          // CircularProgressIndicator(
          //   value: 0.5,
          //   backgroundColor: Colors.grey,
          //   color: Colors.yellow,
          // ),
        ],
      ),
    ));
  }
}
