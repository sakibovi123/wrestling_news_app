import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.person_outline),
          title: Text(
            "HOME SCREEN",
            style: TextStyle(fontSize: 16.0),
          ),
          bottom: PreferredSize(
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text("Kumar"),
                  ),
                  Tab(
                    child: Text("Lokesh"),
                  ),
                  Tab(
                    child: Text("Rathod"),
                  ),
                  Tab(
                    child: Text("Raj"),
                  ),
                  Tab(
                    child: Text("Madan"),
                  ),
                  Tab(
                    child: Text("Manju"),
                  ),
                  Tab(
                    child: Text("Manjur Baap"),
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(10.0)),
          // actions: <Widget>[
          //   Padding(
          //     padding: const EdgeInsets.only(right: 16.0),
          //     child: Icon(Icons.add_alert),
          //   ),
          // ],
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Center(
                child: Text("Tab 1"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tab 2"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tab 3"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tab 4"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tab 5"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tab 6"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tab 7"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
