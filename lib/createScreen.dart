import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This child is placed at the center of the screen for the create screen', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    );
  }
}
