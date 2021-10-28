import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadethTab.dart';
import 'package:islami/main.dart';
import 'package:islami/quran/quranTab.dart';
import 'package:islami/radio/radioTab.dart';
import 'package:islami/sebha/sebhaTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
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
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: currentPage,
              onTap: (index){
                setState(() {
                  currentPage = index;
                });
              },
              selectedItemColor: MyThemeData.selectedIconColor,
              unselectedItemColor: MyThemeData.unselectedIconColor,
              items: [
                BottomNavigationBarItem(
                  label: 'Ahadeth',
                  icon: ImageIcon(AssetImage('assets/images/ic_moshaf.png'), size: 40,),
                ),
                BottomNavigationBarItem(
                  label: 'Moshaf',
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png'), size: 40,)
                ),
                BottomNavigationBarItem(
                  label: 'Quran',
                  icon: ImageIcon(AssetImage('assets/images/ic_quran.png'), size: 40,),
                ),
                BottomNavigationBarItem(
                  label: 'Radio',
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png'), size: 40,)
                ),
              ],
            ),
          ),
          body: Container(child: getCurrentTab()),
        ),
      ],
    );
  }

  Widget? getCurrentTab () {
    switch (currentPage) {
      case 0:
        return QuranTab();
      case 1:
        return HadeethTab();
      case 2:
        return SebhaTab();
      case 3:
        return RadioTab();
    }
  }
}
