import 'package:flutter/material.dart';
import 'dart:math';

double myNum = 3;

class Dice extends StatefulWidget {
  double getDiceNum() {
    return myNum;
  }

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset("images/diceImages/dice${myNum.floor()}.png"),
        onPressed: () {
          changeNum();
          setState(() {});
        },
      ),
    );
  }

  void changeNum() {
    myNum = Random().nextInt(6) + 1.0;
    print("Dice MyNum : $myNum");
  }

  double getDiceNum() {
    return myNum;
  }
}
