import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/main.dart';

import 'hadethTab.dart';

class HadeethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeethDetails';
  @override
  _HadeethDetailsScreenState createState() => _HadeethDetailsScreenState();
}

class _HadeethDetailsScreenState extends State {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeeth;
    double lineWidth = MediaQuery.of(context).size.width * 0.6;

    return Stack(
      children: [
        Image.asset(
          'assets/images/main_bc.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                'إسلامي',
                style: TextStyle(
                  color: MyThemeData.blackColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 35),
            decoration: BoxDecoration(
              color: MyThemeData.ayatColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '${args.title}',
                              style: TextStyle(fontSize: 24, fontFamily: 'KOUFIBD'),
                            ),
                          ),
                        ),
                        Container(
                          height: 1.5,
                          width: lineWidth,
                          color: MyThemeData.primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '${args.content}',
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )
            )
          ),
        ),
      ],
    );
  }
}

/*
*
Container(
  child: Padding(
    padding: EdgeInsets.all(10),
    child: Text(
      '${args.title}',
      style: TextStyle(fontSize: 24),
    ),
  ),
),
*
* */