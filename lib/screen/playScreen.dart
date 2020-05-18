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

  int increment = 0;
  String whosTurn = "red";

  //red,green,yellow,blue
  Map<double, double> fixedPosiNumber = {
    1: 13,
    2: 13,
    3: 13,
    4: 13,
    5: 35,
    6: 35,
    7: 35,
    8: 35,
  };

  Map<double, double> posiBottom = {
    1: 0,
    2: 0,
    3: 0,
    4: 0,
    5: 0,
    6: 0,
    7: 0,
    8: 0,
  };

  Map<double, double> posiLeft = {
    1: 0,
    2: 0,
    3: 0,
    4: 0,
    5: 0,
    6: 0,
    7: 0,
    8: 0,
  };

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
                  bottom: posiBottom[1],
                  left: posiLeft[1],
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
                  bottom: posiBottom[2],
                  left: posiLeft[2],
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
                  bottom: posiBottom[3],
                  left: posiLeft[3],
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
                  bottom: posiBottom[4],
                  left: posiLeft[4],
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
                        checkKill();
                        whosTurn = "green";
                        print("whosTurn chenged to : $whosTurn");
                      }
                    },
                  ),
                ),
                //Green
                Positioned(
                  bottom: posiBottom[5],
                  left: posiLeft[5],
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
                  bottom: posiBottom[6],
                  left: posiLeft[6],
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
                  bottom: posiBottom[7],
                  left: posiLeft[7],
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
                  bottom: posiBottom[8],
                  left: posiLeft[8],
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
                        checkKill();
                        whosTurn = "red";
                        print("whosTurn chenged to : $whosTurn");
                      }
                    },
                  ),
                ),
              ],
            ),
            Text("${fixedPosiNumber[1]}"),
            Container(height: 100, width: 100, child: Dice()),
            TextField(
              decoration: InputDecoration(hintText: "Enter Increment"),
              onChanged: (value) {
                increment = int.parse(value);
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
    posiBottom[1] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed1Posi(red1PosiIncrement: increment),
        gotiColor: "red");
    posiLeft[1] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed1Posi(red1PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed2Posi() {
    print("Current red2PosiNumber : ${redPath.red2PosiNumber}");
    posiBottom[2] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed2Posi(red2PosiIncrement: increment),
        gotiColor: "red");
    posiLeft[2] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed2Posi(red2PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed3Posi() {
    print("Current red3PosiNumber : ${redPath.red3PosiNumber}");
    posiBottom[3] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed3Posi(red3PosiIncrement: increment),
        gotiColor: "red");
    posiLeft[3] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed3Posi(red3PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
  }

  void updateRed4Posi() {
    print("Current red4PosiNumber : ${redPath.red4PosiNumber}");
    print(
        "Current fixedPosiNumber[4] : ${redPath.redPathMap[redPath.red4PosiNumber]}");

    posiBottom[4] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed4Posi(red4PosiIncrement: increment),
        gotiColor: "red");
    posiLeft[4] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed4Posi(red4PosiIncrement: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
    fixedPosiNumber[4] = redPath.redPathMap[redPath.red4PosiNumber];
    print("Updated red4PosiNumber : ${redPath.red4PosiNumber}");
    print(
        "Updated red4PosiNumber : ${redPath.redPathMap[redPath.red4PosiNumber]}");
  }

//Green
  void updateGreen1Posi() {
    print("Current greenPosiNumber[1] : ${greenPath.greenPosiNumber[1]}");
    posiBottom[5] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen1Posi(increment: increment),
        gotiColor: "green");
    posiLeft[5] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen1Posi(increment: 0), gotiColor: "green");
    setState(() {});
  }

  void updateGreen2Posi() {
    print("Current greenPosiNumber[2] : ${greenPath.greenPosiNumber[2]}");
    posiBottom[6] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen2Posi(increment: increment),
        gotiColor: "green");
    posiLeft[6] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen2Posi(increment: 0), gotiColor: "green");
    setState(() {});
  }

  void updateGreen3Posi() {
    print("Current greenPosiNumber[3] : ${greenPath.greenPosiNumber[3]}");
    posiBottom[7] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen3Posi(increment: increment),
        gotiColor: "green");
    posiLeft[7] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen3Posi(increment: 0), gotiColor: "green");
    setState(() {});
  }

  void updateGreen4Posi() {
    print("Current greenPosiNumber[4] : ${greenPath.greenPosiNumber[4]}");
    print(
        "Current fixedPosiNumber[8] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[4]]}");
    posiBottom[8] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen4Posi(increment: increment),
        gotiColor: "green");
    posiLeft[8] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen4Posi(increment: 0), gotiColor: "green");
    setState(() {});
    fixedPosiNumber[8] = greenPath.greenPathMap[greenPath.greenPosiNumber[4]];
    print("Updated greenPosiNumber[4] : ${greenPath.greenPosiNumber[4]}");
    print(
        "Updated fixedPosiNumber[8] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[4]]}");
  }

  void checkKill() {
    if (whosTurn == "red") {
      if (fixedPosiNumber[4] == fixedPosiNumber[8]) {
        print("red1 killed green1");
        greenPath.greenPosiNumber[4] = 1;
        fixedPosiNumber[8] = 35; //35 is Home fixed Nuber of Green
        print("Current greenPosiNumber[4] : ${greenPath.greenPosiNumber[4]}");

        posiBottom[8] = fixedpath.getBottomPosi(
            posiNumber: fixedPosiNumber[8], gotiColor: "green");
        posiLeft[8] = fixedpath.getLeftPosi(
            posiNumber: fixedPosiNumber[8], gotiColor: "green");
        setState(() {});
      }
    }
  }
}
