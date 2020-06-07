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
  Map<int, double> fixedPosiNumber = {
    1: 13,
    2: 13,
    3: 13,
    4: 13,
    5: 35,
    6: 35,
    7: 35,
    8: 35,
  };

  Map<int, double> posiBottom = {
    1: 0,
    2: 0,
    3: 0,
    4: 0,
    5: 0,
    6: 0,
    7: 0,
    8: 0,
  };

  Map<int, double> posiLeft = {
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
    updatePosi(gotiNum: 1);
    updatePosi(gotiNum: 2);
    updatePosi(gotiNum: 3);
    updatePosi(gotiNum: 4);

    updateGreenPosi(gotiNum: 5);
    updateGreenPosi(gotiNum: 6);
    updateGreenPosi(gotiNum: 7);
    updateGreenPosi(gotiNum: 8);
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
                          updatePosi(gotiNum: 1);
                          i++;
                        }
                        checkKill();
                        whosTurn = "green";
                        updateDiceColor();
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
                          updatePosi(gotiNum: 2);
                          i++;
                        }
                        checkKill();
                        whosTurn = "green";
                        updateDiceColor();

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
                          updatePosi(gotiNum: 3);
                          i++;
                        }
                        checkKill();
                        whosTurn = "green";
                        updateDiceColor();
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
                          updatePosi(gotiNum: 4);
                          i++;
                        }
                        checkKill();
                        whosTurn = "green";
                        updateDiceColor();
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
                          updateGreenPosi(gotiNum: 5);
                          i++;
                        }
                        checkKill();
                        whosTurn = "red";
                        updateDiceColor();
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
                          updateGreenPosi(gotiNum: 6);
                          i++;
                        }
                        checkKill();
                        whosTurn = "red";
                        updateDiceColor();
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
                          updateGreenPosi(gotiNum: 7);
                          i++;
                        }
                        checkKill();
                        whosTurn = "red";
                        updateDiceColor();
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
                          updateGreenPosi(gotiNum: 8);
                          i++;
                        }
                        checkKill();
                        whosTurn = "red";
                        updateDiceColor();
                        print("whosTurn chenged to : $whosTurn");
                      }
                    },
                  ),
                ),
              ],
            ),
            Text("WhosTurn : $whosTurn"),
            Dice(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.redAccent,
                  child: Text(
                    "Extra",
                  ),
                  onPressed: () {
                    updateDiceColor();
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

  //Red
  void updatePosi({int gotiNum}) {
    print(
        "Current redPosiNumber[$gotiNum] : ${redPath.redPosiNumber[gotiNum]}");
    print(
        "Current fixedPosiNumber[$gotiNum] : ${redPath.redPathMap[redPath.redPosiNumber[gotiNum]]}");

    posiBottom[gotiNum] = fixedpath.getBottomPosi(
        posiNumber: redPath.getPosi(gotiNum: gotiNum, increment: increment),
        gotiColor: "red");
    posiLeft[gotiNum] = fixedpath.getLeftPosi(
        posiNumber: redPath.getPosi(gotiNum: gotiNum, increment: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});

    fixedPosiNumber[gotiNum] =
        redPath.redPathMap[redPath.redPosiNumber[gotiNum]];
    print(
        "Updated redPosiNumber[$gotiNum] : ${redPath.redPosiNumber[gotiNum]}");
    print(
        "Updated redPosiNumber[$gotiNum] : ${redPath.redPathMap[redPath.redPosiNumber[gotiNum]]}");
  }

//Green
  void updateGreenPosi({int gotiNum}) {
    print(
        "Current greenPosiNumber[$gotiNum] : ${greenPath.greenPosiNumber[gotiNum]}");
    print(
        "Current fixedPosiNumber[$gotiNum] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[gotiNum]]}");

    posiBottom[gotiNum] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getPosi(gotiNum: gotiNum, increment: increment),
        gotiColor: "green");
    posiLeft[gotiNum] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getPosi(gotiNum: gotiNum, increment: 0),
        gotiColor: "green");
    setState(() {});

    fixedPosiNumber[gotiNum] =
        greenPath.greenPathMap[greenPath.greenPosiNumber[gotiNum]];
    print(
        "Updated greenPosiNumber[$gotiNum] : ${greenPath.greenPosiNumber[gotiNum]}");
    print(
        "Updated fixedPosiNumber[$gotiNum] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[gotiNum]]}");
  }

  void checkKill() {
    if (whosTurn == "red") {
      int i;
      int j;
      for (i = 1; i <= 4; i++) {
        for (j = 5; j <= 8; j++) {
          if (fixedPosiNumber[i] == 13) {
            print(
                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 35) {
            print(
                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 53) {
            print(
                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 31) {
            print(
                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 33) {
            print(
                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == fixedPosiNumber[j]) {
            print("red$i killed green$j");
            greenPath.greenPosiNumber[j] = 1;
            fixedPosiNumber[j] = 35; //35 is Home fixed Nuber of Green
            print(
                "Current greenPosiNumber[$j] : ${greenPath.greenPosiNumber[j]}");

            posiBottom[j] = fixedpath.getBottomPosi(
                posiNumber: fixedPosiNumber[j], gotiColor: "green");
            posiLeft[j] = fixedpath.getLeftPosi(
                posiNumber: fixedPosiNumber[j], gotiColor: "green");
            setState(() {});
          }
        }
      }
    }

    if (whosTurn == "green") {
      int i;
      int j;
      for (i = 5; i <= 8; i++) {
        for (j = 1; j <= 4; j++) {
          if (fixedPosiNumber[i] == 13) {
            print(
                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 35) {
            print(
                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 53) {
            print(
                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 31) {
            print(
                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == 33) {
            print(
                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
          } else if (fixedPosiNumber[i] == fixedPosiNumber[j]) {
            print("green$i killed red$j");
            redPath.redPosiNumber[j] = 1;
            fixedPosiNumber[j] = 13; //13 is Home fixed Nuber of Red
            print("Current redPosiNumber[$j] : ${redPath.redPosiNumber[j]}");

            posiBottom[j] = fixedpath.getBottomPosi(
                posiNumber: fixedPosiNumber[j], gotiColor: "red");
            posiLeft[j] = fixedpath.getLeftPosi(
                posiNumber: fixedPosiNumber[j], gotiColor: "red");
            setState(() {});
          }
        }
      }
    }
  }

  void updateDiceColor() {
    if (whosTurn == "red") {
      diceColor = Colors.red;
    } else if (whosTurn == "green") {
      diceColor = Colors.green;
    } else if (whosTurn == "yello") {
      diceColor = Colors.yellow;
    } else if (whosTurn == "blue") {
      diceColor = Colors.blue;
    }
  }
}
