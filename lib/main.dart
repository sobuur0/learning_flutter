import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ListAndArrays());
}

class ListAndArrays extends StatefulWidget {
  @override
  _ListAndArraysState createState() => _ListAndArraysState();
}

class _ListAndArraysState extends State<ListAndArrays> {

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
    return MaterialApp(
      title: 'ListAndArrays',
      home: Scaffold(
        body: ListView.builder(
          itemCount: count.length,
            itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item number: $index'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            );
            }
        ),
      ),
    );
  }
}





