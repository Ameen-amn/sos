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
    print(begin);
    //notifyListeners();
    return begin;
  }

  Choose stat() {
    print(select);
    //notifyListeners();

    return select;
  }
}
