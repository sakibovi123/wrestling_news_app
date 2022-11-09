import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/EventController.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => EventController()),
        ChangeNotifierProvider(create: (ctx) => NewsController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wrestling News',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          fontFamily: 'Khand',
        ),
        // home: const Home(),
        home: const SplashScreen(),
      ),
    );
  }
}
