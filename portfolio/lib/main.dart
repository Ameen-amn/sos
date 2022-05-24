import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'screens/homeScreen.dart';
import 'provider/choosen.dart';
import './provider/strike.dart';
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
        
        ChangeNotifierProvider(
          create: (_) => Strike(),
        ),

        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SOS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
