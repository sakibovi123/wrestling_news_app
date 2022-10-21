import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 95.0,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFe8e8e8)),
              borderRadius: BorderRadius.circular(6.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white70,
                  blurRadius: 1,
                  spreadRadius: 0,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.notifications),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child:
                    Text("You got a new notification!r"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
