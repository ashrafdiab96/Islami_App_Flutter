import 'package:flutter/cupertino.dart';
import 'package:islami/main.dart';
import 'package:islami/quran/soraNameItem.dart';

class QuranTab extends StatelessWidget {

  final List<String> soraName = [
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  final List<int> soraAya = [
    7, 286, 200, 176, 120, 165, 206, 75, 129, 109, 123, 111, 43, 52, 99, 128 ,111 ,110, 98, 135, 112, 78,
    118, 64, 77, 227, 93, 88, 69, 60, 34, 30, 73, 54, 45, 83, 182, 88, 75, 85, 54, 53, 89, 59, 37, 35, 38, 29, 18,
    45, 60, 49, 62, 55, 78, 96, 29, 22, 24, 13, 14, 11, 11, 18, 12, 12, 30, 52, 52, 44, 28, 28, 20, 56, 40, 31, 50,
    40, 46, 42, 29, 19, 36, 25, 22, 17, 19, 26, 30, 20, 15, 21, 11, 8, 8, 19, 5, 8, 8, 11, 11, 8, 3, 9, 5, 4, 7, 3,
    6, 3, 5, 4, 5, 6
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/quran_top.png')
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: MyThemeData.primaryColor,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'عدد الايات',
                style: TextStyle(fontSize: 24),
              ),
              Container(
                height: 40,
                width: 2,
                color: MyThemeData.primaryColor,
              ),
              Text(
                'اسم السورة',
                style: TextStyle(fontSize: 24),
              ),
            ],
          )
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: MyThemeData.primaryColor,
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
            separatorBuilder: (builldContext, index) {
              return Container(
                height: 1,
                width: double.infinity,
                color: MyThemeData.hadeethTitleSeparator,
              );
            },
            itemBuilder: (builldContext, index) {
              return SoraNameItem(soraName: soraName[index], soraAya: soraAya[index], soraIndex: index);
            },
            itemCount: soraName.length,
          )
        )
      ],
    );
  }
}