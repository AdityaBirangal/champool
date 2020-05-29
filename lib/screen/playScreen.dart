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
                        checkKill();
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
                        checkKill();
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
                        checkKill();
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
                        checkKill();
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
                        checkKill();
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
                        checkKill();
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
    print("Current redPosiNumber[1] : ${redPath.redPosiNumber[1]}");
    print(
        "Current fixedPosiNumber[1] : ${redPath.redPathMap[redPath.redPosiNumber[1]]}");

    posiBottom[1] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed1Posi(increment: increment),
        gotiColor: "red");
    posiLeft[1] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed1Posi(increment: 0), gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});

    fixedPosiNumber[1] = redPath.redPathMap[redPath.redPosiNumber[1]];
    print("Updated redPosiNumber[1] : ${redPath.redPosiNumber[1]}");
    print(
        "Updated redPosiNumber[1] : ${redPath.redPathMap[redPath.redPosiNumber[1]]}");
  }

  void updateRed2Posi() {
    print("Current redPosiNumber[2] : ${redPath.redPosiNumber[2]}");
    print(
        "Current fixedPosiNumber[2] : ${redPath.redPathMap[redPath.redPosiNumber[2]]}");

    posiBottom[2] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed2Posi(increment: increment),
        gotiColor: "red");
    posiLeft[2] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed2Posi(increment: 0), gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});

    fixedPosiNumber[2] = redPath.redPathMap[redPath.redPosiNumber[2]];
    print("Updated redPosiNumber[2] : ${redPath.redPosiNumber[2]}");
    print(
        "Updated redPosiNumber[2] : ${redPath.redPathMap[redPath.redPosiNumber[2]]}");
  }

  void updateRed3Posi() {
    print("Current redPosiNumber[3] : ${redPath.redPosiNumber[3]}");
    print(
        "Current fixedPosiNumber[3] : ${redPath.redPathMap[redPath.redPosiNumber[3]]}");

    posiBottom[3] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed3Posi(increment: increment),
        gotiColor: "red");
    posiLeft[3] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed3Posi(increment: 0), gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});

    fixedPosiNumber[3] = redPath.redPathMap[redPath.redPosiNumber[3]];
    print("Updated redPosiNumber[3] : ${redPath.redPosiNumber[3]}");
    print(
        "Updated redPosiNumber[3] : ${redPath.redPathMap[redPath.redPosiNumber[3]]}");
  }

  void updateRed4Posi() {
    print("Current redPosiNumber[4] : ${redPath.redPosiNumber[4]}");
    print(
        "Current fixedPosiNumber[4] : ${redPath.redPathMap[redPath.redPosiNumber[4]]}");

    posiBottom[4] = fixedpath.getBottomPosi(
        posiNumber: redPath.getRed4Posi(increment: increment),
        gotiColor: "red");
    posiLeft[4] = fixedpath.getLeftPosi(
        posiNumber: redPath.getRed4Posi(increment: 0), gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});
    fixedPosiNumber[4] = redPath.redPathMap[redPath.redPosiNumber[4]];
    print("Updated redPosiNumber[4] : ${redPath.redPosiNumber[4]}");
    print(
        "Updated redPosiNumber[4] : ${redPath.redPathMap[redPath.redPosiNumber[4]]}");
  }

//Green
  void updateGreen1Posi() {
    print("Current greenPosiNumber[5] : ${greenPath.greenPosiNumber[5]}");
    print(
        "Current fixedPosiNumber[5] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[5]]}");

    posiBottom[5] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen1Posi(increment: increment),
        gotiColor: "green");
    posiLeft[5] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen1Posi(increment: 0), gotiColor: "green");
    setState(() {});

    fixedPosiNumber[5] = greenPath.greenPathMap[greenPath.greenPosiNumber[5]];
    print("Updated greenPosiNumber[5] : ${greenPath.greenPosiNumber[5]}");
    print(
        "Updated fixedPosiNumber[5] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[5]]}");
  }

  void updateGreen2Posi() {
    print("Current greenPosiNumber[6] : ${greenPath.greenPosiNumber[6]}");
    print(
        "Current fixedPosiNumber[6] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[6]]}");
    posiBottom[6] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen2Posi(increment: increment),
        gotiColor: "green");
    posiLeft[6] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen2Posi(increment: 0), gotiColor: "green");
    setState(() {});

    fixedPosiNumber[6] = greenPath.greenPathMap[greenPath.greenPosiNumber[6]];
    print("Updated greenPosiNumber[6] : ${greenPath.greenPosiNumber[6]}");
    print(
        "Updated fixedPosiNumber[6] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[6]]}");
  }

  void updateGreen3Posi() {
    print("Current greenPosiNumber[7] : ${greenPath.greenPosiNumber[7]}");
    print(
        "Current fixedPosiNumber[7] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[7]]}");
    posiBottom[7] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen3Posi(increment: increment),
        gotiColor: "green");
    posiLeft[7] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen3Posi(increment: 0), gotiColor: "green");
    setState(() {});
    fixedPosiNumber[7] = greenPath.greenPathMap[greenPath.greenPosiNumber[7]];
    print("Updated greenPosiNumber[7] : ${greenPath.greenPosiNumber[7]}");
    print(
        "Updated fixedPosiNumber[7] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[7]]}");
  }

  void updateGreen4Posi() {
    print("Current greenPosiNumber[8] : ${greenPath.greenPosiNumber[8]}");
    print(
        "Current fixedPosiNumber[8] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[8]]}");
    posiBottom[8] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getGreen4Posi(increment: increment),
        gotiColor: "green");
    posiLeft[8] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getGreen4Posi(increment: 0), gotiColor: "green");
    setState(() {});
    fixedPosiNumber[8] = greenPath.greenPathMap[greenPath.greenPosiNumber[8]];
    print("Updated greenPosiNumber[8] : ${greenPath.greenPosiNumber[8]}");
    print(
        "Updated fixedPosiNumber[8] : ${greenPath.greenPathMap[greenPath.greenPosiNumber[8]]}");
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
}
