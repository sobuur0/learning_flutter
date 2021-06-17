import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stacks(),
  ));
}

class Stacks extends StatefulWidget {
  @override
  _StacksState createState() => _StacksState();
}

class _StacksState extends State<Stacks> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget> [
          Card(color: Colors.blue, child: Padding(padding: const EdgeInsets.all(200),),),
          Card(color: Colors.red, child: Padding(padding: const EdgeInsets.all(100),),),
          Card(color: Colors.brown, child: Padding(padding: const EdgeInsets.all(50),),),
          Card(color: Colors.cyan, child: Padding(padding: const EdgeInsets.all(30),),),
          Card(color: Colors.yellow, child: Padding(padding: const EdgeInsets.all(10),),),
        ],
      ),
    );
  }
}





