/*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

class Fixedpath {
  double fixedPosiNumber = 11;

  double getBottomPosi({double posiNumber}) {
    print("Inside Fixedpath/getBottomPosi");
    int tempInt = (posiNumber / 10).floor() -
        1; //-1 so, (40 + 80 * tempDouble) this works well
    double tempDouble = tempInt.ceilToDouble();
    print("Bottom Pixel : ${36 + 72 * tempDouble}");
    return 36 + 72 * tempDouble;
  }

  double getLeftPosi({double posiNumber}) {
    print("Inside Fixedpath/LeftPosi");
    int tempInt = (posiNumber % 10).floor() - 1;
    double tempDouble = tempInt.ceilToDouble();
    print("Left Pixel : ${36 + 72 * tempDouble}");
    return 36 + 72 * tempDouble;
  }
}

class Redpath {
  double red1PosiNumber = 1;
  double red2PosiNumber = 1;
  double red3PosiNumber = 1;
  double red4PosiNumber = 1;

  /*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

  Map<double, double> redPathMap = {
    1: 13,
    2: 14,
    3: 15,
    4: 25,
    5: 35,
    6: 45,
    7: 55,
    8: 54,
    9: 53,
    10: 52,
    11: 51,
    12: 41,
    13: 31,
    14: 21,
    15: 11,
    16: 12,
    17: 22,
    18: 32,
    19: 42,
    20: 43,
    21: 44,
    22: 34,
    23: 24,
    24: 23,
    25: 33
  };

  double getRed1Posi({double red1PosiIncrement}) {
    red1PosiNumber += red1PosiIncrement;
    print("Redpath/redPathMap ${redPathMap[red1PosiNumber]}");

    print("Inside Redpath/getRed1Posi");
    print("Redpath/red1PosiNumber $red1PosiNumber");

    return redPathMap[red1PosiNumber];
  }

  double getRed2Posi({double red2PosiIncrement}) {
    red2PosiNumber += red2PosiIncrement;
    print("Redpath/redPathMap ${redPathMap[red2PosiNumber]}");

    print("Inside Redpath/getRed2Posi");
    print("Redpath/red2PosiNumber $red2PosiNumber");

    return redPathMap[red2PosiNumber];
  }
}
