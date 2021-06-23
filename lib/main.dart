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

class _AppBarTestState extends State<AppBarTest> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}





