import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/hadeethNameItem.dart';

import '../main.dart';

class HadeethTab extends StatefulWidget {
  @override
  _HadeethTabState createState() => _HadeethTabState();
}

class _HadeethTabState extends State {
  List<Hadeeth> verse = [];

  @override
  Widget build(BuildContext context) {
    if (verse.isEmpty) {
      loadHadeethContent();
    }

    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset('assets/images/hadeeth_logo.png'),
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: MyThemeData.primaryColor,
        ),
        Container(
          child: Text(
            'الأحاديث',
            style: TextStyle(fontSize: 24),
          )
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: MyThemeData.primaryColor,
        ),
        Expanded(
          flex: 5,
          child: ListView.separated(
            separatorBuilder: (builldContext, index) {
              return Container(
                height: 1,
                width: double.infinity,
                color: MyThemeData.hadeethTitleSeparator,
              );
            },
            itemBuilder: (builldContext, index) {
              return HadeethNameItem(hadeeth: verse[index]);
            },
            itemCount: verse.length,
          ),
        )
      ],
    );
  }

  void loadHadeethContent () async {
    for (int i = 1; i <= 50; i++) {
      String content = await rootBundle.loadString('assets/hadeeth/$i.txt');
      List<String> lines = content.split('\n');
      String hadeethTitle = lines[0];
      String hadeethContent = '';
      for (int j = 1; j < lines.length; j++) {
        hadeethContent += lines[j];
      }
      var h = Hadeeth(title: hadeethTitle, content: hadeethContent);
      setState(() {
        this.verse.add(h);
      });
    }
  }

}

class Hadeeth {
  String? title;
  String? content;
  Hadeeth({required this.title, required this.content});
}


