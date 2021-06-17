import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: GridView(),
  ));
}

class GridView extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridView> {

  List<int> count = [];

  @override
  void initState() {
    // TODO: implement initState
    for(int i=0; i<50; i++) {
      count.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: count.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.red,
              child: Padding(padding: const EdgeInsets.all(20),),
            );
          }
      )
    );
  }
}





