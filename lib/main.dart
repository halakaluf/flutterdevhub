import 'package:flutter/material.dart';
import './screens/challenges.dart' as challenges;
import './screens/thirtydays.dart' as thirty;

void main() {
  runApp(new MaterialApp(home: new Tabs()));
}

class Tabs extends StatefulWidget {
  @override
  TabsState createState() => new TabsState();
}

class TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Flutter Dev Hub"), backgroundColor: Colors.blue),
      bottomNavigationBar: new Material(
          color: Colors.blue,
          child: SafeArea(
            child: new TabBar(
                indicatorColor: Colors.white,
                controller: tabController,
                tabs: <Tab>[
                  new Tab(text: "Thirty Days"),
                  new Tab(text: "Challennges")
                ]),
          )),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new thirty.Thirtydays(),
          new challenges.Challenges()
        ],
      ),
    );
  }
}
