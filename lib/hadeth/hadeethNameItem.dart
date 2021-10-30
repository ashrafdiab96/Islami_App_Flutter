import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeethDetails.dart';

import 'hadethTab.dart';

class HadeethNameItem extends StatelessWidget {
  Hadeeth hadeeth;
  HadeethNameItem({required this.hadeeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context, HadeethDetailsScreen.routeName,
          arguments: hadeeth
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              '${hadeeth.title}',
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}