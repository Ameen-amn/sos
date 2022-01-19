import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:portfolio/widgets/buttons.dart';
import '../widgets/table.dart';
import '../provider/choosen.dart';

class IntrdouctionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Portfolio'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Player1:'),
                    Text('Player2:'),
                  ],
                ),
                MainTable(),
                SOButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
