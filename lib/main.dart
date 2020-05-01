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
              Image.asset("images/Champool_Logo.png"),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                child: Text(
                  "    Play    ",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                child: Text(
                  "    Option    ",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                child: Text(
                  "    Help    ",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                child: Text(
                  "    About    ",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                child: Text(
                  "    Exit    ",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
