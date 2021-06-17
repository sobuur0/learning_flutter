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
        appBar: AppBar(title: Text('Row and Column'),),
        body: Container(
          padding: const EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Row 1'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text('Column1'),
                  Text('Column2'),
                  Text('Column3'),
                ],
              ),
              Text('Row2')
            ],
          ),
        ),
      )
    );
  }
}




