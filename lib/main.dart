import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/EventController.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';
import 'package:wrestling_news_app/Controller/ResultController.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
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
        ChangeNotifierProvider(create: (ctx) => ResultsController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wrestling News',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: 'Khand',
        ),
        // home: const Home(),
        home: const SplashScreen(),
        routes: {
          EventDetails.routeName: (context) => const EventDetails(),
          ResultDetails.routeName: (context) => const ResultDetails(),
        },
      ),
    );
  }
}
