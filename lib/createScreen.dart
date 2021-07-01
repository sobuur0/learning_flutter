import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:testing_app/widgets/custom_alert_dialogue.dart';


class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  String ptext = '';
  bool cbool = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: GestureDetector(
            child: Text('Create your favourite User', style: TextStyle(color: Colors.cyan),),
            onTap: () {
              //Open this dialogue im about to implement
              showAlertDialogue(context);
            },
          ),
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
            )),
            Expanded(
                child: Checkbox(
                  value: true,
                  onChanged: null
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showAlertDialogue(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialogueBox();
      }
  );
}
