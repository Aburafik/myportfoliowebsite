import 'package:flutter/material.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';

class MobileViewExpertiseArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: constTilte("Expertise Area"),
          ),
          miniText(
              "Am always curious in learning new technologies to keep myself update. For now i have been able to aquire the following skills and always ready to learn upcoming ones "),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Color(0xff161922),
            height: 210,
            // color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      expertiseCard(
                          icon: Icons.phone_android,
                          value: 40.0,
                          title: "FLUTTER DEVELOPER"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: expertiseCard(
                            icon: Icons.computer,
                            value: 40.0,
                            title: "WEB DEVELOPER"),
                      ),
                      expertiseCard(
                          icon: Icons.add_link,
                          value: 40.0,
                          title: "MICROSOFT SUITE"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
