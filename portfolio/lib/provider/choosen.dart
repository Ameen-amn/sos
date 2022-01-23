import 'package:flutter/cupertino.dart';

enum Choose { S, O, Empty }

class Choosen with ChangeNotifier {
  late bool begin = false;
  late Choose select = Choose.Empty;

  void choice(bool status, Choose selected) {
    begin = status;
    select = selected;
    notifyListeners();
  }

  bool fin() {
    return begin;
  }

  Choose stat() {
    return select;
  }
}
