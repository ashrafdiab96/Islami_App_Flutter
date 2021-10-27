import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IslamI Application',
      routes: {
        HomeScreen.routeName: (builldContext) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}