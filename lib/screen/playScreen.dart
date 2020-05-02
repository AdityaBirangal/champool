import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double posiBottom = 0;
  double posiLeft = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "images/Board.png",
                ),
                Positioned(
                  bottom: posiBottom,
                  left: posiLeft,
                  child: Image.asset(
                    "images/Champool_Logo.png",
                    height: 50,
                  ),
                ),
              ],
            ),
            FlatButton(
              color: Colors.redAccent,
              child: Text(
                "1",
              ),
              onPressed: () {
                posiBottom = 0;
                posiLeft = 0;
                setState(() {});
              },
            ),
            FlatButton(
              color: Colors.redAccent,
              child: Text(
                "2",
              ),
              onPressed: () {
                posiBottom = 0;
                posiLeft = 300;
                setState(() {});
              },
            ),
            FlatButton(
              color: Colors.redAccent,
              child: Text(
                "3",
              ),
              onPressed: () {
                posiBottom = 300;
                posiLeft = 300;
                setState(() {});
              },
            ),
            FlatButton(
              color: Colors.redAccent,
              child: Text(
                "4",
              ),
              onPressed: () {
                posiBottom = 300;
                posiLeft = 0;
                setState(() {});
              },
            ),
            SizedBox(height: 5),
            FlatButton(
              padding: EdgeInsets.all(5),
              color: Colors.redAccent,
              child: Text(
                "    Back    ",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
