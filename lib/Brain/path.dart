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

  double getRed1Posi({int increment}) {
    redPosiNumber[1] += increment;
    print("Inside Redpath/getRed1Posi");
    print("Redpath/redPathMap ${redPathMap[redPosiNumber[1]]}");
    print("Redpath/redPosiNumber[1] ${redPosiNumber[1]}");

    return redPathMap[redPosiNumber[1]];
  }

  double getRed2Posi({int increment}) {
    redPosiNumber[2] += increment;
    print("Inside Redpath/getRed2Posi");
    print("Redpath/redPathMap ${redPathMap[redPosiNumber[2]]}");
    print("Redpath/redPosiNumber[2] ${redPosiNumber[2]}");

    return redPathMap[redPosiNumber[2]];
  }

  double getRed3Posi({int increment}) {
    redPosiNumber[3] += increment;
    print("Inside Redpath/getRed3Posi");
    print("Redpath/redPathMap ${redPathMap[redPosiNumber[3]]}");
    print("Redpath/redPosiNumber[3] ${redPosiNumber[3]}");

    return redPathMap[redPosiNumber[3]];
  }

  double getRed4Posi({int increment}) {
    redPosiNumber[4] += increment;
    print("Inside Redpath/getRed4Posi");
    print("Redpath/redPathMap ${redPathMap[redPosiNumber[4]]}");
    print("Redpath/redPosiNumber[4] ${redPosiNumber[4]}");

    return redPathMap[redPosiNumber[4]];
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

  double getGreen1Posi({int increment}) {
    greenPosiNumber[5] += increment;
    print("Inside Greenpath/getGreen1Posi");
    print("Greenpath/greenPathMap : ${greenPathMap[greenPosiNumber[5]]}");
    print("Greenpath/greenPosiNumber[5] : ${greenPosiNumber[5]}");
    return greenPathMap[greenPosiNumber[5]];
  }

  double getGreen2Posi({int increment}) {
    greenPosiNumber[6] += increment;
    print("Inside Redpath/getGreen2Posi");
    print("Greenpath/greenPathMap : ${greenPathMap[greenPosiNumber[6]]}");
    print("Greenpath/greenPosiNumber[6] : ${greenPosiNumber[6]}");

    return greenPathMap[greenPosiNumber[6]];
  }

  double getGreen3Posi({int increment}) {
    greenPosiNumber[7] += increment;
    print("Inside Redpath/getGreen3Posi");
    print("Greenpath/greenPathMap : ${greenPathMap[greenPosiNumber[7]]}");
    print("Greenpath/greenPosiNumber[7] : ${greenPosiNumber[7]}");

    return greenPathMap[greenPosiNumber[7]];
  }

  double getGreen4Posi({int increment}) {
    greenPosiNumber[8] += increment;
    print("Inside Redpath/getGreen4Posi");
    print("Greenpath/greenPathMap : ${greenPathMap[greenPosiNumber[8]]}");
    print("Greenpath/greenPosiNumber[8] : ${greenPosiNumber[8]}");

    return greenPathMap[greenPosiNumber[8]];
  }
}
