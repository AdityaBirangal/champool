import 'package:flutter/material.dart';
import 'package:champool/Brain/path.dart';
import 'package:champool/Brain/dice.dart';

Fixedpath fixedpath = Fixedpath();

RedPath redPath = RedPath();
GreenPath greenPath = GreenPath();
YellowPath yellowPath = YellowPath();
BluePath bluePath = BluePath();

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
  9: 53,
  10: 53,
  11: 53,
  12: 53,
  13: 31,
  14: 31,
  15: 31,
  16: 31,
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
  9: 0,
  10: 0,
  11: 0,
  12: 0,
  13: 0,
  14: 0,
  15: 0,
  16: 0,
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
  9: 0,
  10: 0,
  11: 0,
  12: 0,
  13: 0,
  14: 0,
  15: 0,
  16: 0,
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

    updateYellowPosi(gotiNum: 9);
    updateYellowPosi(gotiNum: 10);
    updateYellowPosi(gotiNum: 11);
    updateYellowPosi(gotiNum: 12);

    updateBluePosi(gotiNum: 13);
    updateBluePosi(gotiNum: 14);
    updateBluePosi(gotiNum: 15);
    updateBluePosi(gotiNum: 16);
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

                //Yellow
                Goti(gotiNum: 9),
                Goti(gotiNum: 10),
                Goti(gotiNum: 11),
                Goti(gotiNum: 12),

                //Blue
                Goti(gotiNum: 13),
                Goti(gotiNum: 14),
                Goti(gotiNum: 15),
                Goti(gotiNum: 16),
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
    print("Current redPosiNumber[$gotiNum] : ${redPath.posiNumber[gotiNum]}");
    print(
        "Current fixedPosiNumber[$gotiNum] : ${redPath.redPathMap[redPath.posiNumber[gotiNum]]}");

    posiBottom[gotiNum] = fixedpath.getBottomPosi(
        posiNumber: redPath.getPosi(gotiNum: gotiNum, increment: increment),
        gotiColor: "red");
    posiLeft[gotiNum] = fixedpath.getLeftPosi(
        posiNumber: redPath.getPosi(gotiNum: gotiNum, increment: 0),
        gotiColor: "red");
    //Dont incriment second time, we already incremented in posiBottom
    setState(() {});

    fixedPosiNumber[gotiNum] = redPath.redPathMap[redPath.posiNumber[gotiNum]];
    print("Updated redPosiNumber[$gotiNum] : ${redPath.posiNumber[gotiNum]}");
    print(
        "Updated redPosiNumber[$gotiNum] : ${redPath.redPathMap[redPath.posiNumber[gotiNum]]}");
  }

//Green
  void updateGreenPosi({int gotiNum}) {
    print(
        "Current greenPosiNumber[$gotiNum] : ${greenPath.posiNumber[gotiNum]}");
    print(
        "Current fixedPosiNumber[$gotiNum] : ${greenPath.greenPathMap[greenPath.posiNumber[gotiNum]]}");

    posiBottom[gotiNum] = fixedpath.getBottomPosi(
        posiNumber: greenPath.getPosi(gotiNum: gotiNum, increment: increment),
        gotiColor: "green");
    posiLeft[gotiNum] = fixedpath.getLeftPosi(
        posiNumber: greenPath.getPosi(gotiNum: gotiNum, increment: 0),
        gotiColor: "green");
    setState(() {});

    fixedPosiNumber[gotiNum] =
        greenPath.greenPathMap[greenPath.posiNumber[gotiNum]];
    print(
        "Updated greenPosiNumber[$gotiNum] : ${greenPath.posiNumber[gotiNum]}");
    print(
        "Updated fixedPosiNumber[$gotiNum] : ${greenPath.greenPathMap[greenPath.posiNumber[gotiNum]]}");
  }

  //Yellow
  void updateYellowPosi({int gotiNum}) {
    print(
        "Current yellowPosiNumber[$gotiNum] : ${yellowPath.posiNumber[gotiNum]}");
    print(
        "Current fixedPosiNumber[$gotiNum] : ${yellowPath.yellowPathMap[yellowPath.posiNumber[gotiNum]]}");

    posiBottom[gotiNum] = fixedpath.getBottomPosi(
        posiNumber: yellowPath.getPosi(gotiNum: gotiNum, increment: increment),
        gotiColor: "yellow");
    posiLeft[gotiNum] = fixedpath.getLeftPosi(
        posiNumber: yellowPath.getPosi(gotiNum: gotiNum, increment: 0),
        gotiColor: "yellow");
    setState(() {});

    fixedPosiNumber[gotiNum] =
        yellowPath.yellowPathMap[yellowPath.posiNumber[gotiNum]];
    print(
        "Updated yellowPosiNumber[$gotiNum] : ${yellowPath.posiNumber[gotiNum]}");
    print(
        "Updated fixedPosiNumber[$gotiNum] : ${yellowPath.yellowPathMap[yellowPath.posiNumber[gotiNum]]}");
  }

//Blue
  void updateBluePosi({int gotiNum}) {
    print("Current bluePosiNumber[$gotiNum] : ${bluePath.posiNumber[gotiNum]}");
    print(
        "Current fixedPosiNumber[$gotiNum] : ${bluePath.bluePathMap[bluePath.posiNumber[gotiNum]]}");

    posiBottom[gotiNum] = fixedpath.getBottomPosi(
        posiNumber: bluePath.getPosi(gotiNum: gotiNum, increment: increment),
        gotiColor: "blue");
    posiLeft[gotiNum] = fixedpath.getLeftPosi(
        posiNumber: bluePath.getPosi(gotiNum: gotiNum, increment: 0),
        gotiColor: "blue");
    setState(() {});

    fixedPosiNumber[gotiNum] =
        bluePath.bluePathMap[bluePath.posiNumber[gotiNum]];
    print("Updated bluePosiNumber[$gotiNum] : ${bluePath.posiNumber[gotiNum]}");
    print(
        "Updated fixedPosiNumber[$gotiNum] : ${bluePath.bluePathMap[bluePath.posiNumber[gotiNum]]}");
  }

  void checkKill(int gotiNum) {
    //From Red
    if (getGotiColor(gotiNum: gotiNum) == "red") {
      for (int j = 5; j <= 16; j++) {
        if (fixedPosiNumber[gotiNum] == 13 ||
            fixedPosiNumber[gotiNum] == 35 ||
            fixedPosiNumber[gotiNum] == 53 ||
            fixedPosiNumber[gotiNum] == 31 ||
            fixedPosiNumber[gotiNum] == 33) {
          print(
              "Goti$gotiNum is Not Killed to Goti$j (Home Place ${fixedPosiNumber[gotiNum]})");
        } else if (fixedPosiNumber[gotiNum] == fixedPosiNumber[j]) {
          print("Goti$gotiNum killed Goti$j");

          if (getGotiColor(gotiNum: j) == "green") {
            greenPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 35; //35 is Home fixed Number of Green
            print("Current PosiNumber[$j] : ${greenPath.posiNumber[j]}");
          } else if (getGotiColor(gotiNum: j) == "yellow") {
            yellowPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 53; //53 is Home fixed Number of Yellow
            print("Current PosiNumber[$j] : ${yellowPath.posiNumber[j]}");
          } else if (getGotiColor(gotiNum: j) == "blue") {
            bluePath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 31; //31 is Home fixed Number of Blue
            print("Current PosiNumber[$j] : ${bluePath.posiNumber[j]}");
          }

          posiBottom[j] = fixedpath.getBottomPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          posiLeft[j] = fixedpath.getLeftPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          setState(() {});
        }
      }
    }

    //From Green
    if (getGotiColor(gotiNum: gotiNum) == "green") {
      for (int j = 9; j <= 16; j++) {
        if (fixedPosiNumber[gotiNum] == 13 ||
            fixedPosiNumber[gotiNum] == 35 ||
            fixedPosiNumber[gotiNum] == 53 ||
            fixedPosiNumber[gotiNum] == 31 ||
            fixedPosiNumber[gotiNum] == 33) {
          print(
              "Goti$gotiNum is Not Killed to Goti$j (Home Place ${fixedPosiNumber[gotiNum]})");
        } else if (fixedPosiNumber[gotiNum] == fixedPosiNumber[j]) {
          print("Goti$gotiNum killed Goti$j");

          if (getGotiColor(gotiNum: j) == "yellow") {
            yellowPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 53; //53 is Home fixed Number of Yellow
            print("Current PosiNumber[$j] : ${yellowPath.posiNumber[j]}");
          } else if (getGotiColor(gotiNum: j) == "blue") {
            bluePath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 31; //31 is Home fixed Number of Blue
            print("Current PosiNumber[$j] : ${bluePath.posiNumber[j]}");
          }

          posiBottom[j] = fixedpath.getBottomPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          posiLeft[j] = fixedpath.getLeftPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          setState(() {});
        }
      }

      //To kill red
      for (int j = 1; j <= 4; j++) {
        if (fixedPosiNumber[gotiNum] == 13 ||
            fixedPosiNumber[gotiNum] == 35 ||
            fixedPosiNumber[gotiNum] == 53 ||
            fixedPosiNumber[gotiNum] == 31 ||
            fixedPosiNumber[gotiNum] == 33) {
          print(
              "Goti$gotiNum is Not Killed to Goti$j (Home Place ${fixedPosiNumber[gotiNum]})");
        } else if (fixedPosiNumber[gotiNum] == fixedPosiNumber[j]) {
          print("Goti$gotiNum killed Goti$j");

          if (getGotiColor(gotiNum: j) == "red") {
            redPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 13; //13 is Home fixed Number of Red
            print("Current PosiNumber[$j] : ${redPath.posiNumber[j]}");
          }

          posiBottom[j] = fixedpath.getBottomPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          posiLeft[j] = fixedpath.getLeftPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          setState(() {});
        }
      }
    }

    //From Yellow
    if (getGotiColor(gotiNum: gotiNum) == "yellow") {
      for (int j = 13; j <= 16; j++) {
        if (fixedPosiNumber[gotiNum] == 13 ||
            fixedPosiNumber[gotiNum] == 35 ||
            fixedPosiNumber[gotiNum] == 53 ||
            fixedPosiNumber[gotiNum] == 31 ||
            fixedPosiNumber[gotiNum] == 33) {
          print(
              "Goti$gotiNum is Not Killed to Goti$j (Home Place ${fixedPosiNumber[gotiNum]})");
        } else if (fixedPosiNumber[gotiNum] == fixedPosiNumber[j]) {
          print("Goti$gotiNum killed Goti$j");

          if (getGotiColor(gotiNum: j) == "blue") {
            bluePath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 31; //31 is Home fixed Number of Blue
            print("Current PosiNumber[$j] : ${bluePath.posiNumber[j]}");
          }

          posiBottom[j] = fixedpath.getBottomPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          posiLeft[j] = fixedpath.getLeftPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          setState(() {});
        }
      }

      //To kill red & green
      for (int j = 1; j <= 8; j++) {
        if (fixedPosiNumber[gotiNum] == 13 ||
            fixedPosiNumber[gotiNum] == 35 ||
            fixedPosiNumber[gotiNum] == 53 ||
            fixedPosiNumber[gotiNum] == 31 ||
            fixedPosiNumber[gotiNum] == 33) {
          print(
              "Goti$gotiNum is Not Killed to Goti$j (Home Place ${fixedPosiNumber[gotiNum]})");
        } else if (fixedPosiNumber[gotiNum] == fixedPosiNumber[j]) {
          print("Goti$gotiNum killed Goti$j");

          if (getGotiColor(gotiNum: j) == "red") {
            redPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 13; //13 is Home fixed Number of Red
            print("Current PosiNumber[$j] : ${redPath.posiNumber[j]}");
          } else if (getGotiColor(gotiNum: j) == "green") {
            greenPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 35; //35 is Home fixed Number of Green
            print("Current PosiNumber[$j] : ${greenPath.posiNumber[j]}");
          }

          posiBottom[j] = fixedpath.getBottomPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          posiLeft[j] = fixedpath.getLeftPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          setState(() {});
        }
      }
    }

    //From Red
    if (getGotiColor(gotiNum: gotiNum) == "blue") {
      for (int j = 1; j <= 12; j++) {
        if (fixedPosiNumber[gotiNum] == 13 ||
            fixedPosiNumber[gotiNum] == 35 ||
            fixedPosiNumber[gotiNum] == 53 ||
            fixedPosiNumber[gotiNum] == 31 ||
            fixedPosiNumber[gotiNum] == 33) {
          print(
              "Goti$gotiNum is Not Killed to Goti$j (Home Place ${fixedPosiNumber[gotiNum]})");
        } else if (fixedPosiNumber[gotiNum] == fixedPosiNumber[j]) {
          print("Goti$gotiNum killed Goti$j");

          if (getGotiColor(gotiNum: j) == "red") {
            bluePath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 13; //13 is Home fixed Number of Red
            print("Current PosiNumber[$j] : ${bluePath.posiNumber[j]}");
          } else if (getGotiColor(gotiNum: j) == "green") {
            greenPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 35; //35 is Home fixed Number of Green
            print("Current PosiNumber[$j] : ${greenPath.posiNumber[j]}");
          } else if (getGotiColor(gotiNum: j) == "yellow") {
            yellowPath.posiNumber[j] = 1;
            fixedPosiNumber[j] = 53; //53 is Home fixed Number of Yellow
            print("Current PosiNumber[$j] : ${yellowPath.posiNumber[j]}");
          }

          posiBottom[j] = fixedpath.getBottomPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          posiLeft[j] = fixedpath.getLeftPosi(
              posiNumber: fixedPosiNumber[j],
              gotiColor: getGotiColor(gotiNum: j));
          setState(() {});
        }
      }
    }

//    if (whosTurn == "red") {
//      int i;
//      int j;
//      int k;
//      for (i = 1; i <= 4; i++) {
//        for (j = 5; j <= 8; j++) {
//          if (fixedPosiNumber[i] == 13) {
//            print(
//                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 35) {
//            print(
//                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 53) {
//            print(
//                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 31) {
//            print(
//                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 33) {
//            print(
//                "green$j Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == fixedPosiNumber[j]) {
//            print("red$i killed green$j");
//            greenPath.posiNumber[j] = 1;
//            fixedPosiNumber[j] = 35; //35 is Home fixed Nuber of Green
//            print("Current PosiNumber[$j] : ${greenPath.posiNumber[j]}");
//
//            posiBottom[j] = fixedpath.getBottomPosi(
//                posiNumber: fixedPosiNumber[j], gotiColor: "green");
//            posiLeft[j] = fixedpath.getLeftPosi(
//                posiNumber: fixedPosiNumber[j], gotiColor: "green");
//            setState(() {});
//          }
//        }
//
//        for (k = 9; k <= 12; k++) {
//          if (fixedPosiNumber[i] == 13) {
//            print(
//                "yellow$k Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 35) {
//            print(
//                "yellow$k Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 53) {
//            print(
//                "yellow$k Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 31) {
//            print(
//                "yellow$k Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 33) {
//            print(
//                "yellow$k Not Killed by red$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == fixedPosiNumber[j]) {
//            print("yellow$k killed green$j");
//            yellowPath.posiNumber[j] = 1;
//            fixedPosiNumber[j] = 53; //53 is Home fixed Nuber of Yellow
//            print("Current PosiNumber[$j] : ${yellowPath.posiNumber[j]}");
//
//            posiBottom[j] = fixedpath.getBottomPosi(
//                posiNumber: fixedPosiNumber[j], gotiColor: "yellow");
//            posiLeft[j] = fixedpath.getLeftPosi(
//                posiNumber: fixedPosiNumber[j], gotiColor: "yellow");
//            setState(() {});
//          }
//        }
//      }
//    }
//
//    if (whosTurn == "green") {
//      int i;
//      int j;
//      for (i = 5; i <= 8; i++) {
//        for (j = 1; j <= 4; j++) {
//          if (fixedPosiNumber[i] == 13) {
//            print(
//                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 35) {
//            print(
//                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 53) {
//            print(
//                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 31) {
//            print(
//                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == 33) {
//            print(
//                "red$j Not Killed by green$i (Home Place ${fixedPosiNumber[i]})");
//          } else if (fixedPosiNumber[i] == fixedPosiNumber[j]) {
//            print("green$i killed red$j");
//            redPath.posiNumber[j] = 1;
//            fixedPosiNumber[j] = 13; //13 is Home fixed Nuber of Red
//            print("Current redNumber[$j] : ${redPath.posiNumber[j]}");
//
//            posiBottom[j] = fixedpath.getBottomPosi(
//                posiNumber: fixedPosiNumber[j], gotiColor: "red");
//            posiLeft[j] = fixedpath.getLeftPosi(
//                posiNumber: fixedPosiNumber[j], gotiColor: "red");
//            setState(() {});
//          }
//        }
//      }
//    }
  }

  //update Dice Color
  void updateDiceColor() {
    if (whosTurn == "red") {
      diceColor = Colors.red;
    } else if (whosTurn == "green") {
      diceColor = Colors.green;
    } else if (whosTurn == "yellow") {
      diceColor = Colors.yellow;
    } else if (whosTurn == "blue") {
      diceColor = Colors.blue;
    }
  }

  //get Goti Color using gotiNum
  String getGotiColor({int gotiNum}) {
    String myColorString;
    if (gotiNum == 1 || gotiNum == 2 || gotiNum == 3 || gotiNum == 4) {
      myColorString = "red";
    } else if (gotiNum == 5 || gotiNum == 6 || gotiNum == 7 || gotiNum == 8) {
      myColorString = "green";
    } else if (gotiNum == 9 ||
        gotiNum == 10 ||
        gotiNum == 11 ||
        gotiNum == 12) {
      myColorString = 'yellow';
    } else if (gotiNum == 13 ||
        gotiNum == 14 ||
        gotiNum == 15 ||
        gotiNum == 16) {
      myColorString = 'blue';
    }
    return myColorString;
  }

  //Goti Function
  Positioned Goti({int gotiNum}) {
    Color myColor;
    String myColorString = getGotiColor(gotiNum: gotiNum);
    if (myColorString == "red") {
      myColor = Colors.red;
    } else if (myColorString == "green") {
      myColor = Colors.green;
    } else if (myColorString == "yellow") {
      myColor = Colors.yellow;
    } else if (myColorString == "blue") {
      myColor = Colors.blue;
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
              } else if (myColorString == "yellow") {
                updateYellowPosi(gotiNum: gotiNum);
              } else if (myColorString == "blue") {
                updateBluePosi(gotiNum: gotiNum);
              }
              i++;
            }
            checkKill(gotiNum);
            if (myColorString == "red") {
              whosTurn = "green";
            } else if (myColorString == "green") {
              whosTurn = "yellow";
            } else if (myColorString == "yellow") {
              whosTurn = "blue";
            } else if (myColorString == "blue") {
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
