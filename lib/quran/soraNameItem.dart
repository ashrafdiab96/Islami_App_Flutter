import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/quran/soraDetails.dart';

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
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              '$soraAya',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              '$soraName',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}