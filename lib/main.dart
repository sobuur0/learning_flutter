import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testing_app/createScreen.dart';
import 'package:testing_app/feedScreen.dart';
import 'package:testing_app/homeFilledScreen.dart';

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
         HomeFilled(),
          FeedScreen(),
           CreateScreen(),
        ],
      ),

      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController2,
          tabs: <Widget> [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 80,
                child: Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget> [
                    Tab(icon: Icon(Icons.home, color: Colors.black,)),
                    Expanded(child: Text('Home', style: TextStyle(color: Colors.black),)),
                  ],
                ),
              ),
            ),
            // Tab(icon: Icon(Icons.home, color: Colors.black,), text: 'Home',),
            Tab(
                icon: Icon(Icons.account_box, color: Colors.black,)
            ),
            Tab(icon: Icon(Icons.ac_unit, color: Colors.black,)),
            Tab(icon: Icon(Icons.accessibility_new_rounded, color: Colors.black,)),
          ]
        )
      ),
    );
  }
}





