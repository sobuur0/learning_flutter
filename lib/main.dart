import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Testing App"),
      ),
       body: Container(
           child: Image.asset('assets/images/background.png',
           fit: BoxFit.cover,
           height: double.infinity,
           width: double.infinity,
           alignment: Alignment.center,)
       )
    );
  }
}


