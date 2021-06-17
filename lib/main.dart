import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RowAndColumn());
}

class RowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('listWidget'),),
        body: ListView(
          children: <Widget> [
            ListTile(
              title: Text('First Item'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Second Item'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('third Item'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        )
      )
    );
  }
}




