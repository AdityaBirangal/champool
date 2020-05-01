import 'package:flutter/material.dart';
import 'package:champool/screen/playScreen.dart';
import 'package:champool/screen/optionScreen.dart';
import 'package:champool/screen/helpScreen.dart';

void main() {
  runApp(MaterialApp(
    home: ChampoolApp(),
  ));
}

class ChampoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/Champool_Logo.png"),
            SizedBox(height: 10),

//Play Screen
            FlatButton(
              padding: EdgeInsets.all(5),
              color: Colors.greenAccent,
              child: Text(
                "    Play    ",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlayScreen()));
              },
            ),
            SizedBox(height: 10),

//Option Screen
            FlatButton(
              padding: EdgeInsets.all(5),
              color: Colors.greenAccent,
              child: Text(
                "    Option    ",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OptionScreen()));
              },
            ),
            SizedBox(height: 10),

//Help Screen
            FlatButton(
              padding: EdgeInsets.all(5),
              color: Colors.greenAccent,
              child: Text(
                "    Help    ",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpScreen()));
              },
            ),
            SizedBox(height: 10),

//About Screen
            FlatButton(
              padding: EdgeInsets.all(5),
              color: Colors.greenAccent,
              child: Text(
                "    About    ",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 10),

//Exit App
            FlatButton(
              padding: EdgeInsets.all(5),
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
    );
  }
}
