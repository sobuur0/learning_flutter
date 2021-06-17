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

class _AppBarTestState extends State<AppBarTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App',
        style: TextStyle(color: Colors.red),),
        backgroundColor: Colors.white,
        toolbarOpacity: 0.5,
        elevation: 50,
        centerTitle: true,
      ),
    );
  }
}





