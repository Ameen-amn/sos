import 'package:flutter/material.dart';
import 'choosen.dart';

class Strike with ChangeNotifier {
  late Map<int, Choose> active = {};
  late List<int> Os = [];

  int lastSelectedIndex = -1;
  void lastSelectedCell(int index) {
    lastSelectedIndex = index;
    notifyListeners();
  }

  void OStrike() {
    late Choose? up = active[lastSelectedIndex - 12];
    late Choose? leftup = active[lastSelectedIndex - 13];
    late Choose? left = active[lastSelectedIndex - 1];
    late Choose? leftdown = active[lastSelectedIndex + 11];

    late Choose? down = active[lastSelectedIndex + 12];
    late Choose? rightup = active[lastSelectedIndex - 11];
    late Choose? right = active[lastSelectedIndex + 1];
    late Choose? rightdown = active[lastSelectedIndex + 13];
    print(lastSelectedIndex);
    /*  print(active[lastSelectedIndex - 12]);
    print(active[lastSelectedIndex + 12]); */
    if (leftup == Choose.S && rightdown == Choose.S) {
      print('player won');
    }

    if ((lastSelectedIndex) % 12 != 0 && (lastSelectedIndex + 1) % 12 != 0) {
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

  void SStrike() {
    late Choose? up = active[lastSelectedIndex - 12];
    late Choose? leftup = active[lastSelectedIndex - 13];
    late Choose? left = active[lastSelectedIndex - 1];
    late Choose? leftdown = active[lastSelectedIndex + 11];

    late Choose? down = active[lastSelectedIndex + 12];
    late Choose? rightup = active[lastSelectedIndex - 11];
    late Choose? right = active[lastSelectedIndex + 1];
    late Choose? rightdown = active[lastSelectedIndex + 13];

    if (up == Choose.O || down == Choose.O) {
      if (active[(lastSelectedIndex - 24)] == Choose.S) {
        print("Player won");
      }
      if (active[(lastSelectedIndex + 24)] == Choose.S) {
        print("Player won");
      }
    }

    if (leftup == Choose.O || rightdown == Choose.O) {
      if (active[(lastSelectedIndex - 26)] == Choose.S) {
        print("Player Won");
      }
      if (active[(lastSelectedIndex - 26)] == Choose.S) {
        print("Player Won");
      }
    }

    if (left == Choose.O || right == Choose.O) {
      if (active[(lastSelectedIndex - 2)] == Choose.S) {
        print("Player Won");
      }
      if (active[(lastSelectedIndex + 2)] == Choose.S) {
        print("Player Won");
      }
    }
    if (leftdown == Choose.O || rightup == Choose.O) {
      if (active[(lastSelectedIndex + 22)] == Choose.S) {
        print("Player Won");
      }
      if (active[(lastSelectedIndex - 22)] == Choose.S) {
        print("Player Won");
      }
    }
  }

  void strikeHV(int cell) {
    if (active.values == Choose.O) {
      Os = active.keys.toList();
    }
  }
}
