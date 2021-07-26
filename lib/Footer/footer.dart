import 'package:flutter/cupertino.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff161922),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          miniText("Copyright @ 2021, all rights reserved"),
          miniText("Stack used- Dart Language and Flutter-web"),
          miniText("Created by Citizen raf"),
        ],
      ),
    );
  }
}
