import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int MyNum = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset("images/diceImages/dice$MyNum.png"),
        onPressed: () {
          changeNum();
          setState(() {});
        },
      ),
    );
  }

  void changeNum() {
    MyNum = Random().nextInt(6) + 1;
  }
}
