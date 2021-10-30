import 'package:flutter/cupertino.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container()
        ),
        Expanded(
          flex: 2,
          child: Image.asset('assets/images/radio.png'),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 25),
                child: Text(
                  'إذاعة القرآن الكريم',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/radio_left.png'),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 70),
                    child: Image.asset('assets/images/radio_middle.png'),
                  ),
                  Image.asset('assets/images/radio_right.png'),
                ],
              ),
            ],
          )
        ),
      ],
    );
  }
}