import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContainerApp());
}

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Text('When actually using a Container, only one child property can be set in the container.'),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(40),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          transform: Matrix4.rotationZ(0.7),
        ),
      ),
    );
  }
}




