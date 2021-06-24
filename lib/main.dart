import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: AppBarTest(),
  ));
}

class AppBarTest extends StatefulWidget {
  @override
  _AppBarTestState createState() => _AppBarTestState();
}

class _AppBarTestState extends State<AppBarTest> with TickerProviderStateMixin {

  late TabController _tabController;
  late TabController _tabController2;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 3, vsync: this);
    _tabController2 = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('AppBar Test'),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget> [
            Tab(icon: Icon(Icons.home_filled),),
            Tab(icon: Icon(Icons.feed),),
            Tab(icon: Icon(Icons.create),),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget> [
         Center(child: Text('This child is placed at the center of the screen for the home filled screen'),),
          Center(child: Text('This child is placed at the center of the screen for the feed screen'),),
           Center(child: Text('This child is placed at the center of the screen for the create screen'),),

        ],
      ),
    );
  }
}





