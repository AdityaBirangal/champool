import 'package:flutter/material.dart';
import 'package:champool/Brain/path.dart';
import 'package:champool/Brain/dice.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  Fixedpath fixedpath = Fixedpath();
  RedPath redPath = RedPath();
  GreenPath greenPath = GreenPath();
  Dice dice = Dice();

  double posiNumber = 11;
  double increment = 0;
  String whosTurn = "red";

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
  double green2PosiLeft = 0;

  double green3PosiBottom = 0;
  double green3PosiLeft = 0;

  double green4PosiBottom = 0;
  double green4PosiLeft = 0;

  @override
  initState() {
    updateRed1Posi();
    updateRed2Posi();
    updateRed3Posi();
    updateRed4Posi();
    updateGreen1Posi();
    updateGreen2Posi();
    updateGreen3Posi();
    updateGreen4Posi();
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
                //Red
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
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "red") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateRed1Posi();
                          i++;
                        }
                        whosTurn = "green";
                        print("whosTurn chenged to : $whosTurn");
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
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "red") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateRed2Posi();
                          i++;
                        }
                        whosTurn = "green";
                        print("whosTurn chenged to : $whosTurn");
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
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "red") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateRed3Posi();
                          i++;
                        }
                        whosTurn = "green";
                        print("whosTurn chenged to : $whosTurn");
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
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "red") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateRed4Posi();
                          i++;
                        }
                        whosTurn = "green";
                        print("whosTurn chenged to : $whosTurn");
                      }
                    },
                  ),
                ),
                //Green
                Positioned(
                  bottom: green1PosiBottom,
                  left: green1PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("1"),
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    onTap: () async {
                      print("green1 Tap");
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "green") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateGreen1Posi();
                          i++;
                        }
                        whosTurn = "red";
                        print("whosTurn chenged to : $whosTurn");
                      }
                    },
                  ),
                ),
                Positioned(
                  bottom: green2PosiBottom,
                  left: green2PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("2"),
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    onTap: () async {
                      print("green2 Tap");
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "green") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateGreen2Posi();
                          i++;
                        }
                        whosTurn = "red";
                        print("whosTurn chenged to : $whosTurn");
                      }
                    },
                  ),
                ),
                Positioned(
                  bottom: green3PosiBottom,
                  left: green3PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("3"),
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    onTap: () async {
                      print("green3 Tap");
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "green") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateGreen3Posi();
                          i++;
                        }
                        whosTurn = "red";
                        print("whosTurn chenged to : $whosTurn");
                      }
                    },
                  ),
                ),
                Positioned(
                  bottom: green4PosiBottom,
                  left: green4PosiLeft,
                  child: GestureDetector(
                    child: Container(
                      child: Text("4"),
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    onTap: () async {
                      print("green4 Tap");
                      print("whosTurn : $whosTurn");
                      if (whosTurn == "green") {
                        double i = 0;
                        while (i < dice.getDiceNum()) {
                          await Future.delayed(Duration(milliseconds: 500));
                          updateGreen4Posi();
                          i++;
                        }
                        whosTurn = "red";
                        print("whosTurn chenged to : $whosTurn");
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
    print("Current red1PosiNumber : ${redPath.red1PosiNumber}");
    red1PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed1Posi(red1PosiIncrement: increment),
        gotiColor: "red");
    red1PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed1Posi(red1PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed2Posi() {
    print("Current red2PosiNumber : ${redPath.red2PosiNumber}");
    red2PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed2Posi(red2PosiIncrement: increment),
        gotiColor: "red");
    red2PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed2Posi(red2PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed3Posi() {
    print("Current red3PosiNumber : ${redPath.red3PosiNumber}");
    red3PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed3Posi(red3PosiIncrement: increment),
        gotiColor: "red");
    red3PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed3Posi(red3PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed4Posi() {
    print("Current red4PosiNumber : ${redPath.red4PosiNumber}");
    red4PosiBottom = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed4Posi(red4PosiIncrement: increment),
        gotiColor: "red");
    red4PosiLeft = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed4Posi(red4PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

//Green
  void updateGreen1Posi() {
    print("Current green1PosiNumber : ${greenPath.green1PosiNumber}");
    green1PosiBottom = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen1Posi(increment: increment),
        gotiColor: "green");
    green1PosiLeft = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen1Posi(increment: 0), gotiColor: "green");
    setState(() {});
  }

  void updateGreen2Posi() {
    print("Current green2PosiNumber : ${greenPath.green2PosiNumber}");
    green2PosiBottom = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen2Posi(increment: increment),
        gotiColor: "green");
    green2PosiLeft = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen2Posi(increment: 0), gotiColor: "green");
    setState(() {});
  }

  void updateGreen3Posi() {
    print("Current green3PosiNumber : ${greenPath.green3PosiNumber}");
    green3PosiBottom = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen3Posi(increment: increment),
        gotiColor: "green");
    green3PosiLeft = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen3Posi(increment: 0), gotiColor: "green");
    setState(() {});
  }

  void updateGreen4Posi() {
    print("Current green4PosiNumber : ${greenPath.green4PosiNumber}");
    green4PosiBottom = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen4Posi(increment: increment),
        gotiColor: "green");
    green4PosiLeft = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen4Posi(increment: 0), gotiColor: "green");
    setState(() {});
  }
}
