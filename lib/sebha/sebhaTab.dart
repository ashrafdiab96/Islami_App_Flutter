import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/main.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  int tasbeehCount = 0;
  int currentDoaa = 0;
  final List<String> doaa = [
    'سبحان اللًه', 'الحمد للًه', 'اللًه أكبر', 'لا إله إلا اللًه', 'لا حول ولا قوة إلا باللًه العلي العظيم'
  ];

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700)
    );

    final double deg = 360/33;
    setRotation(deg);
  }

  void dispose () {
    controller.dispose();
    super.dispose();
  }

  void setRotation (double degrees) {
    final double angle = degrees * pi / 180;
    animation = Tween<double>(begin: 0, end: angle).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.only(top: 20),
                child: Image.asset('assets/images/sebha_head.png'),
              )
            ]
          )
        ),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: () {
              setState(() {
                if (tasbeehCount == 33) {
                  tasbeehCount = 0;
                  currentDoaa == 4 ? currentDoaa = 0 : currentDoaa++;
                } else {
                  tasbeehCount++;
                }
                controller.forward(from: 0);
              });
            },
            child: AnimatedBuilder(
              builder: (context, child) => Transform.rotate(
                angle: animation.value,
                child: Image.asset('assets/images/sebha.png'),
              ),
              animation: animation,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'عدد التسبيحات',
                  style: TextStyle(fontSize: 32, fontFamily: 'El Messiri'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: MyThemeData.tasbeehCountColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  '$tasbeehCount',
                  style: TextStyle(
                    fontSize: 24,
                    color: MyThemeData.blackColor
                  ),
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: MyThemeData.primaryColor,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text(
                  '${doaa[currentDoaa]}',
                  style: TextStyle(
                    fontSize: 24,
                    color: MyThemeData.unselectedIconColor
                  ),
                ),
              ),
            ],
          )
        )
      ],
    );
  }
}