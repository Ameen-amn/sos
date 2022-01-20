import 'package:flutter/material.dart';
import 'package:portfolio/widgets/buttons.dart';
import 'package:provider/provider.dart';
import './screens/main_screen.dart';
import 'provider/choosen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Choosen(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: IntrdouctionScreen(),
      ),
    );
  }
}
