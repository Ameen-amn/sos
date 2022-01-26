import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/choosen.dart';
import '../provider/strike.dart';

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
  late bool cSelected = false;
  late Choose cStatus = Choose.S;
  late bool firstClick = true;
  late List<int> active = [];

  @override
  Widget build(BuildContext context) {
    final used = Provider.of<Strike>(context);
    return GestureDetector(
      onTap: () {
        if (firstClick) {
          setState(() {
            cSelected = widget.status;
            cStatus = widget.selected;
            firstClick = false;

            used.lastSelectedCell(widget.id);

            used.active[widget.id] = cStatus;
            used.OStrike();
            used.SStrike();
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(
              color: used.lastSelectedIndex == widget.id
                  ? Colors.yellow
                  : Colors.black45,
              width: used.lastSelectedIndex == widget.id ? 1.5 : 0.5),
        ),
        child: Center(
          child: Text(
            cSelected ? (cStatus == Choose.S ? 'S' : 'O') : '',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
