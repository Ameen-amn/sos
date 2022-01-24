import 'package:flutter/material.dart';
import 'choosen.dart';

class Strike with ChangeNotifier {
  late Map<int, Choose> active = {};
  late List<int> Os = [];
  /*  Map<int, Choose> get active {
    return {..._active};
  } */

  int lastSelectedIndex = -1;
  void lastSelectedCell(int index) {
    lastSelectedIndex = index;
    notifyListeners();
  }

  void OStrike() {
   
    Choose? up = active[lastSelectedIndex - 12];
    Choose? leftup = active[lastSelectedIndex - 13];
    Choose? left = active[lastSelectedIndex - 1];
    Choose? leftdown = active[lastSelectedIndex + 11];
  
    Choose? down = active[lastSelectedIndex + 12];
    Choose? rightup = active[lastSelectedIndex - 11];
    Choose? right = active[lastSelectedIndex + 1];
    Choose? rightdown = active[lastSelectedIndex + 13];
    
    print(lastSelectedIndex);
    print(active[lastSelectedIndex - 12]);
    print(active[lastSelectedIndex + 12]);
    if (leftup == Choose.S && rightdown == Choose.S) {
      print('player won');
    }

    if ((lastSelectedIndex) % 12 != 0 &&
        (lastSelectedIndex + 1) % 12 != 0) {
      if (left == Choose.S && right == Choose.S) {
        print('player won');
      }
    }
    if (leftdown == Choose.S && rightup == Choose.S) {
      print('player won');
    }

    if (up == Choose.S && down == Choose.S) {
      print('player won');
    }

    notifyListeners();
  }

  void strikeHV(int cell) {
    if (active.values == Choose.O) {
      Os = active.keys.toList();
    }
  }
}
