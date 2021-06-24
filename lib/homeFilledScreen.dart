import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeFilled extends StatefulWidget {
  @override
  _HomeFilledState createState() => _HomeFilledState();
}

class _HomeFilledState extends State<HomeFilled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Container(
        color: Colors.red,
        margin: EdgeInsets.all(15),
        child: Container(
          color: Colors.cyan,
          margin: EdgeInsets.all(15),
          child: Container(
            color: Colors.black,
            margin: EdgeInsets.all(15),
            child: Container(
              color: Colors.brown,
              margin: EdgeInsets.all(15),
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.all(15),
                child: customMethod(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget customMethod() {
  return Container(
    color: Colors.yellow,
    margin: EdgeInsets.all(25),
  );
}
