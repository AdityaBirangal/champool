class CentralData {
  final double diceNum;
  CentralData({this.diceNum});

  double abc = 0;

//  void giveDiceNum(double given) {
//    print("Given Num: $given");
//    diceNum = given;
//  }

  double getDiceNum() {
    abc = diceNum;
    print("Get Num: $abc");
    return abc;
  }
}
