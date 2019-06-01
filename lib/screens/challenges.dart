import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterdevhub/FlutterDevPageView.dart';

// Challenge sample apps
import 'package:flutterdevhub/nubank-clone/main.dart';
import 'package:flutterdevhub/WhatsappFlutter/main.dart';
import 'package:flutterdevhub/youtube_flutter/main.dart';
import 'package:flutterdevhub/TwitterFlutter/main.dart';
import 'package:flutterdevhub/piano_tiles/main.dart';

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
              1,
              NubankApp()),
          new _Tile(
              'https://cdn6.aptoide.com/imgs/3/f/f/3ff2d475a346839f547b3475353c171d_icon.png?w=240',
              'Piano Tiles 2',
              2,
              PianoTilesApp()),
          new _Tile(
              'https://seeklogo.com/images/T/twitter-2012-negative-logo-5C6C1F1521-seeklogo.com.png',
              'twitter',
              3,
              TwitterApp()),
          new _Tile('https://image.flaticon.com/icons/png/512/124/124034.png',
              'Whatsapp', 4, WhatsappFlutter()),
          new _Tile(
              'https://cdn4.iconfinder.com/data/icons/social-media-2210/24/Youtube-512.png',
              'Youtube',
              5,
              YoutubeApp()),
        ],
        staggeredTiles: const <StaggeredTile>[
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.source, this.name, this.index, this.sampleApp);

  final String source;
  final String name;
  final int index;
  final Widget sampleApp;

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ChallengeSample(title: '$name', sample: sampleApp)),
        );
      },
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
    ));
  }
}
