import 'package:flutter/material.dart';
import 'package:portfolio/provider/choosen.dart';
import 'package:provider/provider.dart';

enum Choose { S, O }

class SOButton extends StatefulWidget {
  @override
  _SOButtonState createState() => _SOButtonState();
}

class _SOButtonState extends State<SOButton> {
  /*  bool sSelected = true;
  bool o = false; */
  late final Choose ss;
  @override
  Widget build(BuildContext context) {
    final choosen = Provider.of<Choosen>(context);
    return Container(
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                ss = Choose.S;
              });
            },
            child: Text(
              "S",
              style: TextStyle(
                color: ss == Choose.S ? Colors.black : Colors.grey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                /* o = !o;
                s = false; */
                /* sSelected = false;
                Navigator.of(context).pop(sSelected);
                choosen.choice(sSelected); */
                ss = Choose.O;
              });
            },
            child: Text(
              "O",
              style: TextStyle(
                color: ss == Choose.O ? Colors.black : Colors.grey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
            ),
          ),
        ],
      ),
    );
  }
}
