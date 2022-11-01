import 'dart:async';

import 'package:flutter/material.dart';

import '../Pages/Export.dart';

class StoryView extends StatefulWidget {
  final StoryData story;
  const StoryView({Key? key, required this.story}) : super(key: key);

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  double percent = 0.0;
  Timer? _timer;
  void startTimer() {
    _timer = Timer.periodic(const Duration(microseconds: 5000), (timer) {
      setState(() {
        percent += 0.001;
        if (percent > 1) {
          _timer?.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.story.storyUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: percent,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.story.avatarUrl),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      widget.story.productName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
