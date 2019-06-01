import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Challenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new StaggeredGridView.count(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        children: <Widget>[
          new _Tile(
              'https://pbs.twimg.com/profile_images/1088117599106420737/LmsdyIhy_400x400.jpg',
              'Nubank',
              1),
          new _Tile(
              'https://image.flaticon.com/icons/png/512/124/124034.png',
              'Whatsapp',
              2),
          new _Tile(
              'https://a.slack-edge.com/4a5c4/marketing/img/meta/slack_hash_256.png',
              'Slack',
              3),
        ],
        staggeredTiles: const <StaggeredTile>[
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.source, this.name, this.index);

  final String source;
  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Image.network(source),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}