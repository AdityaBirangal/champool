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
  double posiBottom = 0;
  double posiLeft = 0;
  double posiNumber = 11;
  double increment = 0;
  @override
  initState() {
    posiBottom =
        fixedpath.getBottomPosi(redpath.getRedPosi(redPosiIncrement: 0));
    posiLeft = fixedpath.getLeftPosi(redpath.getRedPosi(redPosiIncrement: 0));
  }

  Widget build(BuildContext context) {
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
                  bottom: posiBottom,
                  left: posiLeft,
                  child: IconButton(
                    icon: Image.asset(
                      "images/Champool_Logo.png",
                      height: 30,
                    ),
                    onPressed: () {
                      print("Icon Presses");
                    },
                  ),
                ),
              ],
            ),
            Text("${redpath.getRedPosi(redPosiIncrement: 0)}"),
            Container(height: 100, width: 100, child: Dice()),
            TextField(
              decoration: InputDecoration(hintText: "Enter Position"),
              onChanged: (value) {
                posiNumber = double.parse(value);
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
                    print("New Botton Pressed");
                    print("${redpath.redPosiNumber}");
                    posiBottom = fixedpath.getBottomPosi(
                        redpath.getRedPosi(redPosiIncrement: increment));
                    posiLeft = fixedpath.getLeftPosi(redpath.getRedPosi(
                        redPosiIncrement:
                            0)); //Dont incriment second time, we already incremented in posiBottom

                    setState(() {});
                  },
                ),
                SizedBox(width: 5),
                FlatButton(
                  color: Colors.redAccent,
                  child: Text(
                    "Restore",
                  ),
                  onPressed: () {
                    print("Restore Botton Pressed");
                    redpath.getRedHomePosi();
                    posiBottom = fixedpath
                        .getBottomPosi(redpath.getRedPosi(redPosiIncrement: 1));
                    posiLeft = fixedpath
                        .getLeftPosi(redpath.getRedPosi(redPosiIncrement: 1));
                    setState(() {});
                  },
                ),
                SizedBox(width: 5),
                FlatButton(
                  color: Colors.redAccent,
                  child: Text(
                    "Update",
                  ),
                  onPressed: () {
                    print("2 Botton Pressed");
                    posiBottom = fixedpath
                        .getBottomPosi(redpath.getRedPosi(redPosiIncrement: 1));
                    posiLeft = fixedpath
                        .getLeftPosi(redpath.getRedPosi(redPosiIncrement: 1));
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
}
