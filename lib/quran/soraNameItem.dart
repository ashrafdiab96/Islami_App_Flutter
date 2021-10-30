import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/quran/soraDetails.dart';

import '../main.dart';

class SoraNameItem extends StatelessWidget {
  String? soraName;
  int? soraAya;
  int? soraIndex;

  SoraNameItem({required this.soraName, required this.soraAya, required this.soraIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context, SoraDetailsScreen.routeName,
          arguments: SoraDetailsArgs(soraNameArg: soraName, soraIndexArg: soraIndex),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                '$soraAya',
                style: TextStyle(fontSize: 24,),
                textAlign: TextAlign.center,
              ),
            )
          ),
          Container(
            height: 40,
            width: 2,
            color: MyThemeData.primaryColor,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                '$soraName',
                style: TextStyle(fontSize: 24,),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}