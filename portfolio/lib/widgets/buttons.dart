import 'package:flutter/material.dart';
import 'package:portfolio/provider/choosen.dart';
import 'package:provider/provider.dart';

class SOButton extends StatefulWidget {
  @override
  _SOButtonState createState() => _SOButtonState();
}

class _SOButtonState extends State<SOButton> {
  /*  bool sSelected = true;
  bool o = false; */
  late bool start = false;
  late Choose option = Choose.S;
  @override
  Widget build(BuildContext context) {
    final choosen = Provider.of<Choosen>(context);
    return Container(
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                start = true;
                option = Choose.S;
                choosen.choice(start, option);
              });
            },
            child: Text(
              "S",
              style: TextStyle(
                color: start
                    ? option == Choose.S
                        ? Colors.black
                        : Colors.grey
                    : Colors.grey,
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
                start = true;
                option = Choose.O;
                choosen.choice(start, option);
              });
            },
            child: Text(
              "O",
              style: TextStyle(
                color: option == Choose.O ? Colors.black : Colors.grey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue[100]),
            ),
          ),
        ],
      ),
    );
  }
}
