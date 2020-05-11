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

  double getBottomPosi(double posiNumber) {
    print("Inside Fixedpath/getBottomPosi");
    int tempInt = (posiNumber / 10).floor() -
        1; //-1 so, (40 + 80 * tempDouble) this works well
    double tempDouble = tempInt.ceilToDouble();
    print("Bottom Pixel : ${36 + 72 * tempDouble}");
    return 36 + 72 * tempDouble;
  }

  double getLeftPosi(double posiNumber) {
    print("Inside Fixedpath/LeftPosi");
    int tempInt = (posiNumber % 10).floor() - 1;
    double tempDouble = tempInt.ceilToDouble();
    print("Left Pixel : ${36 + 72 * tempDouble}");
    return 36 + 72 * tempDouble;
  }
}

class Redpath {
  double redPosiNumber = 1;

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

  double getRedPosi({double redPosiIncrement}) {
    redPosiNumber += redPosiIncrement;
    print("Redpath/redPathMap ${redPathMap[redPosiNumber]}");

    print("Inside Redpath/getRedPosi");
    print("Redpath/redPosiNumber $redPosiNumber");

    return redPathMap[redPosiNumber];
  }

  void getRedHomePosi() {
    redPosiNumber = 1;
    getRedPosi();
  }
}
