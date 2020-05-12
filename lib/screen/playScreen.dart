import 'package:flutter/material.dart';
import 'package:champool/Brain/path.dart';
import 'package:champool/Brain/dice.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  Fixedpath fixedpath = Fixedpath();
  Redpath redpath = Redpath();
  Dice dice = Dice();
  double red1PosiBottom = 0;
  double red1PosiLeft = 0;

  double red2PosiBottom = 0;
  double red2PosiLeft = 0;

  double posiNumber = 11;
  double increment = 0;

  @override
  initState() {
    updateRed1Posi();
    updateRed2Posi();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "images/Board.png",
                  height: 360,
                  width: 360,
                ),
                Positioned(
                  bottom: red1PosiBottom,
                  left: red1PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("1"),
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    onTap: () {
                      print("red1 Tap");
                      updateRed1Posi();
                    },
                  ),
                ),
                Positioned(
                  bottom: red2PosiBottom,
                  left: red2PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("2"),
                      height: 24,
                      width: 24,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      print("red2 Tap");
                      updateRed2Posi();
                    },
                  ),
                ),
              ],
            ),
            Container(height: 100, width: 100, child: Dice()),
            TextField(
              decoration: InputDecoration(hintText: "Enter Increment"),
              onChanged: (value) {
                increment = double.parse(value);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.redAccent,
                  child: Text(
                    "New",
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
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

  void updateRed1Posi() {
    print("${redpath.red1PosiNumber}");
    red1PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed1Posi(red1PosiIncrement: increment));
    red1PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed1Posi(red1PosiIncrement: 0));
    //Dont incriment second time, we already incremented in posiBottom

    setState(() {});
  }

  void updateRed2Posi() {
    print("${redpath.red2PosiNumber}");
    red2PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed2Posi(red2PosiIncrement: increment));
    red2PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed2Posi(red2PosiIncrement: 0));
    //Dont incriment second time, we already incremented in posiBottom

    setState(() {});
  }
}
