import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeethNameItem.dart';

import '../main.dart';

class HadeethTab extends StatelessWidget {
  final List<String> hadeethTitle = [
    'الحديث الأول', 'الحديث الثاني', 'الحديث الـثـالـث', 'الحديث الـرابع', 'الحديث الخامس', 'الحديث السادس',
    'الحديث السابع', 'الحديث الثامن', 'الحديث التاسع', 'الحديث العاشر', 'الحديث الحادي عشر', 'الحديث الثاني عشر',
    'الحديث الثالث عشر', 'الحديث الرابع عشر', 'الحديث الخامس عشر', 'الحديث السادس عشر', 'الحديث السابع عشر',
    'الحديث الثامن عشر', 'الحديث التاسع عشر', 'الحد يث العشرون', 'الحديث الحادي والعشرون', 'الحديث الثاني والعشرون',
    'الحديث الثالث والعشرون', 'الـحديث الرابع والعشرون', 'الحديث الخامس والعشرون', 'الحديث السادس والعشرون',
    'الحديث السابع والعشرون', 'الحديث الثامن والعشرون', 'الحديث التاسع والعشرون', 'الحديث الثلاثــون',
    'الـحديث الحادي والثلاثون', 'الحديث الثاني والثلاثون', 'الحديث الثالث والثلاثون', 'الحديث الرابع والثلاثون',
    'الحديث الخامس والثلاثون', 'الحديث السادس والثلاثون', 'الحديث السابع والثلاثون', 'الـحديث الثامن والثلاثون',
    'الحديث التاسع والثلاثون', 'الحديث الأربعون', 'الحديث الحادي والأربعون', 'الحديث الثاني والأربعـون',
    'الحديث الثالث والأربعون', 'الحديث الرابع والأربعون', 'الـحديث الخامس والأربعون', 'الحديث السادس والأربعون',
    'الحديث السابع والأربعون', 'الـحديث الثامن والأربعون', 'الحديث التاسع والأربعون', 'الحديث الخمسون',
  ];

  @override
  Widget build(BuildContext context) {
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
              return HadeethNameItem(hadeethName: hadeethTitle[index], hadeethIndex: index);
            },
            itemCount: hadeethTitle.length,
          ),
        )
      ],
    );
  }
}
