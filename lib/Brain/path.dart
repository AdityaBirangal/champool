/*
Fixed Positions
51 52 53 54 55
41 42 43 44 45
31 32 33 34 35
21 22 23 24 25
11 12 13 14 15
*/

class Fixedpath {
  double posiNumber = 11;

  double getBottomPosi(double posiNumber) {
    print("Now inside Fixedpath/getBottomPosi");
    int tempInt = (posiNumber / 10).floor() -
        1; //-1 so, (40 + 80 * tempDouble) this works well
    double tempDouble = tempInt.ceilToDouble();
    print(40 + 80 * tempDouble);
    return 40 + 80 * tempDouble;
  }

  double getLeftPosi(double posiNumber) {
    print("Now inside Fixedpath/LeftPosi");
    int tempInt = (posiNumber % 10).floor() - 1;
    double tempDouble = tempInt.ceilToDouble();
    print(40 + 80 * tempDouble);
    return 40 + 80 * tempDouble;
  }
}
