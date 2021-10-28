import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/main.dart';

class SoraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sora_details';

  @override
  _SoraDetailsScreenState createState() => _SoraDetailsScreenState();
}

class _SoraDetailsScreenState extends State<SoraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SoraDetailsArgs;

    if (verses.isEmpty) {
      loadSoraDetails(args.soraIndexArg!);
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
                // 'إسلامي',
                '${args.soraNameArg}',
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

            child: verses.isEmpty ? Center(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(MyThemeData.primaryColor),
                )
            ) :
            Container(
              child: ListView.separated(
                separatorBuilder: (builldContext, index) {
                  return Container(
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: double.infinity,
                    color: Colors.blue,
                  );
                },
                itemBuilder: (builldContext, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        verses[index] + '{${index+1}}',
                        style: TextStyle(fontSize: 24,),
                        textAlign: TextAlign.center,
                        // textDirection: TextDirection.rtl,
                      ),
                    ),
                  );
                },
                itemCount: verses.length,
              ),
            ),
          ),
        )
      ],
    );
  }

  void loadSoraDetails (int index) async {
    String soraContent = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> ayat = soraContent.split('\m');
    setState(() {
      this.verses = ayat;
    });
  }
}

class SoraDetailsArgs {
  String? soraNameArg;
  int? soraIndexArg;
  SoraDetailsArgs({required this.soraNameArg, required this.soraIndexArg});
}
