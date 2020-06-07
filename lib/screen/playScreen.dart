import 'package:flutter/material.dart';
import 'package:champool/Brain/path.dart';
import 'package:champool/Brain/dice.dart';

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

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
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
                Goti(gotiNum: 1),
                Goti(gotiNum: 2),
                Goti(gotiNum: 3),
                Goti(gotiNum: 4),

                //Green
                Goti(gotiNum: 5),
                Goti(gotiNum: 6),
                Goti(gotiNum: 7),
                Goti(gotiNum: 8),
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

  Positioned Goti({@required int gotiNum}) {
    Color myColor;
    String myColorString;
    if (gotiNum == 1 || gotiNum == 2 || gotiNum == 3 || gotiNum == 4) {
      myColor = Colors.red;
      myColorString = "red";
    } else if (gotiNum == 5 || gotiNum == 6 || gotiNum == 7 || gotiNum == 8) {
      myColor = Colors.green;
      myColorString = "green";
    }
    return Positioned(
      bottom: posiBottom[gotiNum],
      left: posiLeft[gotiNum],
      child: GestureDetector(
        child: Container(
          child: Text("$gotiNum"),
          height: 24,
          width: 24,
          color: myColor,
        ),
        onTap: () async {
          print("Goti$gotiNum Tap");
          print("whosTurn : $whosTurn");
          if (whosTurn == myColorString) {
            double i = 0;
            while (i < dice.getDiceNum()) {
              await Future.delayed(Duration(milliseconds: 500));
              if (myColorString == "red") {
                updatePosi(gotiNum: gotiNum);
              } else if (myColorString == "green") {
                updateGreenPosi(gotiNum: gotiNum);
              }
              i++;
            }
            checkKill();
            if (myColorString == "red") {
              whosTurn = "green";
            } else if (myColorString == "green") {
              whosTurn = "red";
            }
            updateDiceColor();
            print("whosTurn chenged to : $whosTurn");
          }
        },
      ),
    );
  }
}
