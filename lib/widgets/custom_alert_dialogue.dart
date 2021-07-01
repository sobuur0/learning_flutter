import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CustomDialogueBox extends StatefulWidget {
  @override
  _CustomDialogueBoxState createState() => _CustomDialogueBoxState();
}

class _CustomDialogueBoxState extends State<CustomDialogueBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogueBox(context),
      insetPadding: EdgeInsets.all(20),
    );
  }

  dialogueBox(context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.transparent, offset: Offset(0,10),
                blurRadius: 10),
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Image(image: AssetImage('assets/images/no_card_icon.png'),),
                SizedBox(height: 20,),
                Text('You have not added '
                    '\n'
                    '\t\t\t\t\t\t\t\t\t any Card',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 30,),
                 RaisedButton(
                  child: Text('Go to Card details', style: TextStyle(color: Colors.blue),),
                  color: Colors.white,
                  colorBrightness: Brightness.light,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
