import 'package:flutter/material.dart';
import 'package:portfolio/provider/choosen.dart';
import 'package:provider/provider.dart';
import '../widgets/cell.dart';

class MainTable extends StatefulWidget {
  /*  late final bool choosen;
  MainTable({required this.choosen}); */
  @override
  _MainTableState createState() => _MainTableState();
}

class _MainTableState extends State<MainTable> {
  @override
  Widget build(BuildContext context) {
    final choice = Provider.of<Choosen>(context);
    return Container(
      color: Colors.black,
      height: ((MediaQuery.of(context).size.height * 0.618) ~/ 1).toDouble(),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 12,
          childAspectRatio: 1,
          crossAxisSpacing: 0.5,
          mainAxisSpacing: 0.5,
        ),
        itemBuilder: (ctx, i) => Cell(
          id: i,
          selected: choice.stat(),
          status: choice.fin(),
        ),
        itemCount: 12 * ((MediaQuery.of(context).size.height * 0.618) ~/ 1),
      ),
    );
  }
}
