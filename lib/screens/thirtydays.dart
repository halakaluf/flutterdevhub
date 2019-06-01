import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//SpinKitWave(color: Color.fromRGBO(215, 40, 40, 0.9), type: SpinKitWaveType.start);

class Thirtydays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('1 Day'),
          subtitle: Text('Project 01 - SimpleStopWatch'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          }
        ),
        ListTile(
          title: Text('2 Day'),
          subtitle: Text('Project 02 - CustomFont'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          }
        ),
        ListTile(
          title: Text('3 Day'),
          subtitle: Text('Project 03 - PlayLocalVideo'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          }
        ),
        ListTile(
          title: Text('4 Day'),
          subtitle: Text('Project 04 - SnapChatMenu'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          }
        ),
        ListTile(
          title: Text('5 Day'),
          subtitle: Text('Project 05 - CarouselEffect'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          }
        ),
        ListTile(
          title: Text('6 Day'),
          subtitle: Text('Project 06 - FindMyLocation'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          }
        ),
        ListTile(
          title: Text('7 Day'),
          subtitle: Text('Project 07 - PullToRefresh'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          }
        )
      ],
    );
  }
}