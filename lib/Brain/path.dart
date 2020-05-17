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
    print("Inside Redpath/getRed1Posi");
    print("Redpath/redPathMap ${redPathMap[red1PosiNumber]}");
    print("Redpath/red1PosiNumber $red1PosiNumber");

    return redPathMap[red1PosiNumber];
  }

  double getRed2Posi({double red2PosiIncrement}) {
    red2PosiNumber += red2PosiIncrement;
    print("Inside Redpath/getRed2Posi");
    print("Redpath/redPathMap ${redPathMap[red2PosiNumber]}");
    print("Redpath/red2PosiNumber $red2PosiNumber");

    return redPathMap[red2PosiNumber];
  }

  double getRed3Posi({double red3PosiIncrement}) {
    red3PosiNumber += red3PosiIncrement;
    print("Inside Redpath/getRed3Posi");
    print("Redpath/redPathMap ${redPathMap[red3PosiNumber]}");
    print("Redpath/red3PosiNumber $red3PosiNumber");

    return redPathMap[red3PosiNumber];
  }

  double getRed4Posi({double red4PosiIncrement}) {
    red4PosiNumber += red4PosiIncrement;
    print("Inside Redpath/getRed4Posi");
    print("Redpath/redPathMap ${redPathMap[red4PosiNumber]}");
    print("Redpath/red4PosiNumber $red4PosiNumber");

    return redPathMap[red4PosiNumber];
  }
}

class GreenPath {
  double green1PosiNumber = 1;
  double green2PosiNumber = 1;
  double green3PosiNumber = 1;
  double green4PosiNumber = 1;

  /*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

  Map<double, double> greenPathMap = {
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

  double getGreen1Posi({double increment}) {
    green1PosiNumber += increment;
    print("Inside Greenpath/getGreen1Posi");
    print("Greenpath/greenPathMap ${greenPathMap[green1PosiNumber]}");
    print("Greenpath/green1PosiNumber $green1PosiNumber");

    return greenPathMap[green1PosiNumber];
  }

  double getGreen2Posi({double increment}) {
    green2PosiNumber += increment;
    print("Inside Redpath/getGreen2Posi");
    print("Greenpath/greenPathMap ${greenPathMap[green2PosiNumber]}");
    print("Greenpath/green2PosiNumber $green2PosiNumber");

    return greenPathMap[green2PosiNumber];
  }

  double getGreen3Posi({double increment}) {
    green3PosiNumber += increment;
    print("Inside Redpath/getGreen3Posi");
    print("Greenpath/greenPathMap ${greenPathMap[green3PosiNumber]}");
    print("Greenpath/green3PosiNumber $green3PosiNumber");

    return greenPathMap[green3PosiNumber];
  }

  double getGreen4Posi({double increment}) {
    green4PosiNumber += increment;
    print("Inside Redpath/getGreen4Posi");
    print("Greenpath/greenPathMap ${greenPathMap[green4PosiNumber]}");
    print("Greenpath/green4PosiNumber $green4PosiNumber");

    return greenPathMap[green4PosiNumber];
  }
}
