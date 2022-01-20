import 'package:flutter/material.dart';
import '../provider/choosen.dart';

class Cell extends StatefulWidget {
  late final int id;
  late final bool status;
  late final Choose selected;
  Cell({
    required this.id,
    required this.selected,
    required this.status,
  });

  @override
  _CellState createState() => _CellState();
}

class _CellState extends State<Cell> {
  late bool a = false;
  late Choose b = Choose.S;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          a = widget.status;
          b = widget.selected;
        });
      },
      child: Container(
        color: Colors.blueGrey,
        child: Text(a ? (b == Choose.S ? 'S' : 'O') : ''),
      ),
    );
  }
}
