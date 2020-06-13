/*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

import 'package:flutter/cupertino.dart';

//--Fixedpath-----------------------------------------------
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
    if (gotiColor == "yellow") {
      bottomAdjestment = -36;
    }
    if (gotiColor == "blue") {
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
    if (gotiColor == "yellow") {
      leftAdjestment = -12;
    }
    if (gotiColor == "blue") {
      leftAdjestment = 12;
    }

    print("Inside Fixedpath/LeftPosi");
    int tempInt = (posiNumber % 10).floor() - 1;
    double tempDouble = tempInt.ceilToDouble();
    print("Left Pixel : ${36 + 72 * tempDouble + leftAdjestment}");
    return 36 + 72 * tempDouble + leftAdjestment;
  }
}

//--Redpath-----------------------------------------------
class RedPath {
  Map<int, int> posiNumber = {
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
    posiNumber[gotiNum] += increment;
    print("Inside Redpath/getRed${gotiNum}Posi");
    print("Redpath/redPathMap ${redPathMap[posiNumber[gotiNum]]}");
    print("Redpath/redPosiNumber[$gotiNum] ${posiNumber[gotiNum]}");

    return redPathMap[posiNumber[gotiNum]];
  }
}

//--Redpath-----------------------------------------------
class GreenPath {
  Map<int, int> posiNumber = {
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

  double getPosi({
    @required int gotiNum,
    @required int increment,
  }) {
    posiNumber[gotiNum] += increment;
    print("Inside Greenpath/getGreen${gotiNum}Posi");
    print("Greenpath/greenPathMap : ${greenPathMap[posiNumber[gotiNum]]}");
    print("Greenpath/greenPosiNumber[$gotiNum] : ${posiNumber[gotiNum]}");
    return greenPathMap[posiNumber[gotiNum]];
  }
}

//--Yellowpath-----------------------------------------------
class YellowPath {
  Map<int, int> posiNumber = {
    9: 1,
    10: 1,
    11: 1,
    12: 1,
  };

  /*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

  Map<int, double> yellowPathMap = {
    1: 53,
    2: 52,
    3: 51,
    4: 41,
    5: 31,
    6: 21,
    7: 11,
    8: 12,
    9: 13,
    10: 14,
    11: 15,
    12: 25,
    13: 35,
    14: 45,
    15: 55,
    16: 54,
    17: 44,
    18: 34,
    19: 24,
    20: 23,
    21: 22,
    22: 32,
    23: 42,
    24: 43,
    25: 33
  };

  double getPosi({
    @required int gotiNum,
    @required int increment,
  }) {
    posiNumber[gotiNum] += increment;
    print("Inside Yellowpath/getYellow${gotiNum}Posi");
    print("Yellowpath/yellowPathMap : ${yellowPathMap[posiNumber[gotiNum]]}");
    print("Yellowpath/yellowPosiNumber[$gotiNum] : ${posiNumber[gotiNum]}");
    return yellowPathMap[posiNumber[gotiNum]];
  }
}

//--Bluepath-----------------------------------------------
class BluePath {
  Map<int, int> posiNumber = {
    13: 1,
    14: 1,
    15: 1,
    16: 1,
  };

  /*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

  Map<int, double> bluePathMap = {
    1: 31,
    2: 21,
    3: 11,
    4: 12,
    5: 13,
    6: 14,
    7: 15,
    8: 25,
    9: 35,
    10: 45,
    11: 55,
    12: 54,
    13: 53,
    14: 52,
    15: 51,
    16: 41,
    17: 42,
    18: 43,
    19: 44,
    20: 34,
    21: 24,
    22: 23,
    23: 22,
    24: 32,
    25: 33
  };

  double getPosi({
    @required int gotiNum,
    @required int increment,
  }) {
    posiNumber[gotiNum] += increment;
    print("Inside Yellowpath/getYellow${gotiNum}Posi");
    print("Bluepath/bluePathMap : ${bluePathMap[posiNumber[gotiNum]]}");
    print("Bluepath/bluePosiNumber[$gotiNum] : ${posiNumber[gotiNum]}");
    return bluePathMap[posiNumber[gotiNum]];
  }
}
