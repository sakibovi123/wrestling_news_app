import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wrestling News',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: const Home(),
      home: SplashScreen(),
    );
  }
}
