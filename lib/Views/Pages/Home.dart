import 'package:flutter/material.dart';

import 'Export.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        children: [
          NewNewscardWidget(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            mainImage:
                'https://www.wwe.com/f/styles/gallery_img_l/public/all/2016/06/036_RAW_03032014cm_0719--f64de45cfc57f78fbed672596d796c80.jpg',
            bodyTitle: 'lorem' * 8,
            bodyDetails: 'lorem ' * 70,
            footerTitle: 'Firm in a legal tussle with ex-general Counsel',
            footerBody: 'Tap to read more',
            authorName: 'Faiz Ahamed',
            date: 'November 5, 2022',
          ),
          Photos(),
          Champions(),
          ResultsPage(),
        ],
      ),
    );
  }
}
