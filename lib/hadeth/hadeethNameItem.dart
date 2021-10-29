import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeethDetails.dart';

class HadeethNameItem extends StatelessWidget {
  String? hadeethName;
  int? hadeethIndex;
  HadeethNameItem({required this.hadeethName, required this.hadeethIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context, HadeethDetailsScreen.routeName,
          arguments: HadeethDetailsArgs(hadeethName: hadeethName, hadeethIndex: hadeethIndex)
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              '$hadeethName',
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}