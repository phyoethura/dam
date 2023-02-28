import 'package:flutter/material.dart';
//import 'package:mad/banana.dart';



class Asg5 with ChangeNotifier {
  double year = 2023;
  String banana = 'yellow';
  int mark = 0;

  void questionOne(double one) {
    if (one == year) {
      mark++;
    }
    notifyListeners();
  }

  void questionTwo(String color) {
    if (color == banana) {
      mark++;
    }
    notifyListeners();
  }

  void clear() {
    mark = 0;
    notifyListeners();
  }
}
