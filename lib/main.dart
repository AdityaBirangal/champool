import 'package:flutter/material.dart';

void main() {
  runApp(ChampoolApp());
}

class ChampoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                child: Text(
                  "    Play    ",
                  style: TextStyle(fontSize: 40),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
