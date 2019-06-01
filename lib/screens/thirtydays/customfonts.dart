import 'package:flutter/material.dart';

class CustomFonts extends StatelessWidget {
  const CustomFonts(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(title: new Text(this.title), backgroundColor: Colors.blue),
    body: new Container(
      margin: const EdgeInsets.all(30.0),
      alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            "Batman",
            style: new TextStyle(
              fontFamily: 'vtks_distress',
              fontSize: 25.0,
            ),
          ),
          new Text(
            "Wonder Woman",
            style: new TextStyle(
                fontFamily: 'Alyfe_Demo',
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          new Text(
            "Steppenwolf",
            style: new TextStyle(
              fontFamily: 'Antibalon',
              fontSize: 30.0,
            ),
          ),
          new Text(
            "The Flash",
            style: new TextStyle(
              fontFamily: 'vtks_distress',
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    ),
  );
  }
}