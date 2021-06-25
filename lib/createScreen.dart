import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  String ptext = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Create your favourite User', style: TextStyle(color: Colors.cyan),),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget> [
            TextField(
              onChanged: (String txt) {
                setState(() {
                  ptext = txt;
                });
              },
            ),
            Expanded(child: Text(
              ptext,
            ))
          ],
        ),
      ),
    );
  }
}
