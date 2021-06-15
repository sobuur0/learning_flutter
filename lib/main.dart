import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'First App',
    home: SafeArea(
      child: HomePage(),
    ),
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
  ));
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      color: Colors.blue,
      child: Row(
        children: <Widget> [
          IconButton(
              onPressed: null,
              tooltip: 'Navigation Menu',
              icon: Icon(Icons.menu)
          ),
          Expanded(
            child: Text("Testing App",
            style: Theme.of(context)
              .primaryTextTheme
              .headline5),
          ),
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search Menu',
              onPressed: null,
          ),
        ],
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Subtract',
        onPressed: null,
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget> [
          MyAppBar(),
          Expanded(
            flex: 3,
              child: Image.asset('assets/images/background.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,)
          ),

          Expanded(
            flex: 1,
              child: Container(
                  child: FloatingButton()
              )
          )

        ],
      ),
       // body: Container(
       //     child: Image.asset('assets/images/background.png',
       //     fit: BoxFit.cover,
       //     height: double.infinity,
       //     width: double.infinity,)
       // )
    );
  }
}


