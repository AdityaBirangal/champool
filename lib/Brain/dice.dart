import 'package:flutter/material.dart';
import 'dart:math';

int myNum = 3;
Color diceColor = Colors.red;
String whosTurn;

class Dice extends StatefulWidget {
  int getDiceNum() {
    return myNum;
  }

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: diceColor,
        height: 100,
        child: GestureDetector(
          child: Image.asset("images/diceImages/dice${myNum.floor()}.png"),
          onTap: () {
            changeNum();
            setState(() {});
          },
        ),
      ),
    );
  }

  void changeNum() {
    myNum = Random().nextInt(6) + 1;
    print("Dice MyNum : $myNum");
  }
}
