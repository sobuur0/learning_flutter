import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(testApp());
}

class testApp extends StatefulWidget {
  @override
  _testAppState createState() => _testAppState();
}



class _testAppState extends State<testApp> {

  String ttext = '';

  @override
  void initState() {
    // TODO: implement initState
    ttext = 'Click on this Button bruh';
  }

  void changeText() {
    setState(() {
      ttext = 'Text is now changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing App With Stateful Widget',
      home: Scaffold(
        body: Center(
          child: RaisedButton(onPressed: changeText, child: Text(ttext),),
        ),
      ),
    );
  }
}



