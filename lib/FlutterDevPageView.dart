import 'package:flutter/material.dart';

class ChallengeSample extends StatelessWidget {
  ChallengeSample({@required this.title, @required this.sample});

  final String title;
  final Widget sample;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Challenge: $title'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        body: SafeArea(
            left: true,
            top: true,
            right: true,
            bottom: true,
            minimum: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: sample));
  }
}
