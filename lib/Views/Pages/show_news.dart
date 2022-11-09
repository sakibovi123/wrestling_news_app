import 'package:flutter/material.dart';

import 'Export.dart';

class ShowNewsPage extends StatefulWidget {
  const ShowNewsPage({Key? key}) : super(key: key);

  @override
  State<ShowNewsPage> createState() => _ShowNewsPageState();
}

class _ShowNewsPageState extends State<ShowNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewNewscardWidget(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        date: 'ddmmyuy',
        title: 'asdada',
        id: 1,
        content: 'asdada',
      ),
    );
  }
}
