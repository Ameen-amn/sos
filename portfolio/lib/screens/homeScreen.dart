import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:portfolio/widgets/buttons.dart';
import '../widgets/mainTable.dart';
import '../provider/choosen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool start = false;
  late Choose ss = Choose.Empty;
  @override
  Widget build(BuildContext context) {
    final choosen = Provider.of<Choosen>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Portfolio'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 11, 0, 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Player1:',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Player2:',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                MainTable(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.black54,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      start = true;
                      ss = Choose.S;
                      choosen.choice(start, ss);
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
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[200]),
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      start = true;
                      ss = Choose.O;
                      choosen.choice(start, ss);
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
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[200]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
