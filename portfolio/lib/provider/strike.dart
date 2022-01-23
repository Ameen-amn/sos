import 'package:flutter/material.dart';
import 'choosen.dart';

class Strike with ChangeNotifier {
  late Map<int, Choose> active = {};
  late List<int> Os = [];
  /*  Map<int, Choose> get active {
    return {..._active};
  } */

  void pr() {
    print(active.keys);
    notifyListeners();
  }

  void strikeHV(int cell) {
    if (active.values == Choose.O) {
      Os = active.keys.toList();
    }

  }
    int lastSelectedIndex = -1;
    void lastSelectedCell(int index) {
      lastSelectedIndex = index;
      notifyListeners();
    }
}
