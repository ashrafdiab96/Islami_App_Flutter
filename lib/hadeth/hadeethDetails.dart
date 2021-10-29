import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/main.dart';

class HadeethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeethDetails';
  @override
  _HadeethDetailsScreenState createState() => _HadeethDetailsScreenState();
}

class _HadeethDetailsScreenState extends State {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadeethDetailsArgs;

    if (verse.isEmpty) {
      loadHadeethContent(args.hadeethIndex!);
    }

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
        ),
        Container(
          child: ListView.builder(
            itemBuilder: (builldContext, index) {
              return Container(
                decoration: BoxDecoration(
                  color: MyThemeData.ayatColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '${verse[index]}',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            itemCount: verse.length,
          ),
        ),
      ],
    );
  }

  void loadHadeethContent (int index) async {
    String content = await rootBundle.loadString('assets/hadeeth/${index+1}.txt');
    List<String> hadeeth = content.split('\n');
    setState(() {
      this.verse = hadeeth;
    });
  }
}

class HadeethDetailsArgs {
  String? hadeethName;
  int? hadeethIndex;
  HadeethDetailsArgs({required this.hadeethName, required this.hadeethIndex});
}
