import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Testing App"),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          child: Center(child: Text("I am a box")),
        ),
      ),
    );
  }
}


