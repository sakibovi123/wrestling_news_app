import 'package:flutter/material.dart';

import 'Export.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                'Suggested News',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade700),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 180,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 6),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return LandingPageNewsCard();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
