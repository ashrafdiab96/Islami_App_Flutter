import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/quran/soraDetails.dart';

void main() {
  runApp(MyApp());
}

class MyThemeData {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedIconColor = Color.fromRGBO(0, 0, 0, 1.0);
  static final unselectedIconColor =  Color.fromRGBO(255, 255, 255, 1.0);
  static final blackColor = Color.fromRGBO(5, 5, 5, 1);
  static final ayatColor = Color.fromRGBO(248, 248, 248, 1.0);
  static final tasbeehCountColor = Color.fromRGBO(200, 179, 150, 1.0);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: MyThemeData.primaryColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: MyThemeData.blackColor
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: MyThemeData.selectedIconColor,
          unselectedItemColor: MyThemeData.unselectedIconColor
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'IslamI Application',
      routes: {
        HomeScreen.routeName: (builldContext) => HomeScreen(),
        SoraDetailsScreen.routeName: (builldContext) => SoraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}