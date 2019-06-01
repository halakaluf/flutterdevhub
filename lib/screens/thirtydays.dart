import 'package:flutter/material.dart';
import './thirtydays/simplestopwatch.dart' as simplestopwatch;

class Thirtydays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            title: Text('Day 1'),
            subtitle: Text('Project - SimpleStopWatch'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => simplestopwatch.SimpleStopWatchScreen(
                        "Project - SimpleStopWatch")),
              );
            }),
        ListTile(
            title: Text('Day 2'),
            subtitle: Text('Project - CustomFont'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('WIP');
            }),
        ListTile(
            title: Text('Day 3'),
            subtitle: Text('Work in progress'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('WIP');
            }),
        ListTile(
            title: Text('Day 4'),
            subtitle: Text('Work in progress'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('WIP');
            }),
        ListTile(
            title: Text('Day 5'),
            subtitle: Text('Work in progress'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('WIP');
            }),
        ListTile(
            title: Text('Day 6'),
            subtitle: Text('Work in progress'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('WIP');
            }),
        ListTile(
            title: Text('Day 7'),
            subtitle: Text('Work in progress'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('WIP');
            })
      ],
    );
  }
}
