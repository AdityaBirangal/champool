/*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

import 'package:flutter/cupertino.dart';

class Fixedpath {
  double fixedPosiNumber = 11;

  double getBottomPosi({double posiNumber, String gotiColor}) {
    double bottomAdjestment = 0;

    if (gotiColor == "red") {
      bottomAdjestment = 12;
    }
    if (gotiColor == "green") {
      bottomAdjestment = -12;
    }

    print("Inside Fixedpath/getBottomPosi");
    int tempInt = (posiNumber / 10).floor() -
        1; //-1 so, (40 + 80 * tempDouble) this works well
    double tempDouble = tempInt.ceilToDouble();
    print("Bottom Pixel : ${36 + 72 * tempDouble + bottomAdjestment}");
    return 36 + 72 * tempDouble + bottomAdjestment;
  }

  double getLeftPosi({double posiNumber, String gotiColor}) {
    double leftAdjestment = 0;

    if (gotiColor == "red") {
      leftAdjestment = -12;
    }
    if (gotiColor == "green") {
      leftAdjestment = -36;
    }

    print("Inside Fixedpath/LeftPosi");
    int tempInt = (posiNumber % 10).floor() - 1;
    double tempDouble = tempInt.ceilToDouble();
    print("Left Pixel : ${36 + 72 * tempDouble + leftAdjestment}");
    return 36 + 72 * tempDouble + leftAdjestment;
  }
}

class RedPath {
  Map<int, int> redPosiNumber = {
    1: 1,
    2: 1,
    3: 1,
    4: 1,
  };

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

  double getPosi({@required int gotiNum, @required int increment}) {
    redPosiNumber[gotiNum] += increment;
    print("Inside Redpath/getRed${gotiNum}Posi");
    print("Redpath/redPathMap ${redPathMap[redPosiNumber[gotiNum]]}");
    print("Redpath/redPosiNumber[$gotiNum] ${redPosiNumber[gotiNum]}");

    return redPathMap[redPosiNumber[gotiNum]];
  }
}

class GreenPath {
  Map<int, int> greenPosiNumber = {
    5: 1,
    6: 1,
    7: 1,
    8: 1,
  };

  /*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

  Map<int, double> greenPathMap = {
    1: 35,
    2: 45,
    3: 55,
    4: 54,
    5: 53,
    6: 52,
    7: 51,
    8: 41,
    9: 31,
    10: 21,
    11: 11,
    12: 12,
    13: 13,
    14: 14,
    15: 15,
    16: 25,
    17: 24,
    18: 23,
    19: 22,
    20: 32,
    21: 42,
    22: 43,
    23: 44,
    24: 34,
    25: 33
  };

  double getGreenPosi({
    @required int greenNum,
    @required int increment,
  }) {
    greenPosiNumber[greenNum] += increment;
    print("Inside Greenpath/getGreen${greenNum}Posi");
    print(
        "Greenpath/greenPathMap : ${greenPathMap[greenPosiNumber[greenNum]]}");
    print(
        "Greenpath/greenPosiNumber[$greenNum] : ${greenPosiNumber[greenNum]}");
    return greenPathMap[greenPosiNumber[greenNum]];
  }
}
