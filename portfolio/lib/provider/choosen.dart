import 'package:flutter/cupertino.dart';

class Choosen with ChangeNotifier {
  late bool cc = false;
  void choice(bool selected) {
    cc = selected;
    notifyListeners();
  }

  bool fin() {
    print(cc);
    return cc;
  }
}
