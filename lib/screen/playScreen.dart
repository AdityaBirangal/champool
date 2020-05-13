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

  double red3PosiBottom = 0;
  double red3PosiLeft = 0;

  double red4PosiBottom = 0;
  double red4PosiLeft = 0;

  double green1PosiBottom = 0;
  double green1PosiLeft = 0;

  double green2PosiBottom = 0;
  double greenPosiLeft = 0;

  double green3PosiBottom = 0;
  double green3PosiLeft = 0;

  double green4PosiBottom = 0;
  double green4PosiLeft = 0;

  double posiNumber = 11;
  double increment = 0;

  @override
  initState() {
    updateRed1Posi();
    updateRed2Posi();
    updateRed3Posi();
    updateRed4Posi();
  }

  Widget build(BuildContext context) {
    increment = 1; //To increase Goti 1 by 1
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
                    onTap: () async {
                      print("red1 Tap");
                      double i = 0;
                      while (i < dice.getDiceNum()) {
                        await Future.delayed(Duration(milliseconds: 500));
                        updateRed1Posi();
                        i++;
                      }
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
                      color: Colors.red,
                    ),
                    onTap: () async {
                      print("red2 Tap");
                      double i = 0;
                      while (i < dice.getDiceNum()) {
                        await Future.delayed(Duration(milliseconds: 500));
                        updateRed2Posi();
                        i++;
                      }
                    },
                  ),
                ),
                Positioned(
                  bottom: red3PosiBottom,
                  left: red3PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("3"),
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    onTap: () async {
                      print("red3 Tap");
                      double i = 0;
                      while (i < dice.getDiceNum()) {
                        await Future.delayed(Duration(milliseconds: 500));
                        updateRed3Posi();
                        i++;
                      }
                    },
                  ),
                ),
                Positioned(
                  bottom: red4PosiBottom,
                  left: red4PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("4"),
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    onTap: () async {
                      print("red4 Tap");
                      double i = 0;
                      while (i < dice.getDiceNum()) {
                        await Future.delayed(Duration(milliseconds: 500));
                        updateRed4Posi();
                        i++;
                      }
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
    print("Current red1PosiNumber : ${redpath.red1PosiNumber}");
    red1PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed1Posi(red1PosiIncrement: increment),
        gotiColor: "red");
    red1PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed1Posi(red1PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed2Posi() {
    print("Current red2PosiNumber : ${redpath.red2PosiNumber}");
    red2PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed2Posi(red2PosiIncrement: increment),
        gotiColor: "red");
    red2PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed2Posi(red2PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed3Posi() {
    print("Current red3PosiNumber : ${redpath.red3PosiNumber}");
    red3PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed3Posi(red3PosiIncrement: increment),
        gotiColor: "red");
    red3PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed3Posi(red3PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed4Posi() {
    print("Current red4PosiNumber : ${redpath.red4PosiNumber}");
    red4PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed4Posi(red4PosiIncrement: increment),
        gotiColor: "red");
    red4PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed4Posi(red4PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

//Green
  void updateGreen1Posi() {
    print("Current green1PosiNumber : ${redpath.red1PosiNumber}");
    red1PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed1Posi(red1PosiIncrement: increment),
        gotiColor: "red");
    red1PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed1Posi(red1PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateGreen2Posi() {
    print("Current green2PosiNumber : ${redpath.red2PosiNumber}");
    red2PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed2Posi(red2PosiIncrement: increment),
        gotiColor: "red");
    red2PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed2Posi(red2PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateGreen3Posi() {
    print("Current green3PosiNumber : ${redpath.red3PosiNumber}");
    red3PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed3Posi(red3PosiIncrement: increment),
        gotiColor: "red");
    red3PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed3Posi(red3PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateGreen4Posi() {
    print("Current green4PosiNumber : ${redpath.red4PosiNumber}");
    red4PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redpath.getRed4Posi(red4PosiIncrement: increment),
        gotiColor: "red");
    red4PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redpath.getRed4Posi(red4PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }
}
