import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Controller/EventController.dart';
import 'package:wrestling_news_app/Controller/NewsController.dart';
import 'package:wrestling_news_app/Controller/ResultController.dart';
import 'package:wrestling_news_app/Provider/DarkThemeProvider.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';
import 'package:wrestling_news_app/Views/Pages/NewsDetails.dart';
import 'Views/Pages/Export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => EventController()),
        ChangeNotifierProvider(create: (ctx) => NewsController()),
        ChangeNotifierProvider(create: (ctx) => ResultsController()),
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        }),
      ],
      child:
          Consumer<DarkThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Wrestling News',
          theme: Styles.themeData(themeProvider.getDarkTheme, context),
          // home: const Home(),
          home: const SplashScreen(),
          routes: {
            EventDetails.routeName: (context) => const EventDetails(),
            ResultDetails.routeName: (context) => const ResultDetails(),
            NewsDetailsCard.routeName: (context) => const NewsDetailsCard(),
          },
        );
      }),
    );
  }
}
