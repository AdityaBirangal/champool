import 'package:flutter/material.dart';
import 'package:champool/Brain/path.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double posiBottom = 0;
  double posiLeft = 0;
  Fixedpath fixedpath = Fixedpath();
  double posiNumber = 11;
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
                  height: 400,
                  width: 400,
                ),
                Positioned(
                  bottom: posiBottom,
                  left: posiLeft,
                  child: Image.asset(
                    "images/Champool_Logo.png",
                    height: 30,
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter Position"),
              onChanged: (value) {
                posiNumber = double.parse(value);
              },
            ),
            FlatButton(
              color: Colors.redAccent,
              child: Text(
                "Update",
              ),
              onPressed: () {
                print("2 Botton Pressed");
                posiBottom = fixedpath.getBottomPosi(posiNumber);
                posiLeft = fixedpath.getLeftPosi(posiNumber);
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
