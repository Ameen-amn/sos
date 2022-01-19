import 'package:flutter/material.dart';

class Cell extends StatefulWidget {
  late final int id;
  late final bool selected;
  Cell({
    required this.id,
    required this.selected,
  });

  @override
  _CellState createState() => _CellState();
}

class _CellState extends State<Cell> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Text(widget.selected ? 'S' : 'O');
        });
      },
      child: Container(
        color: Colors.blueGrey,
        
      ),
    );
  }
}
