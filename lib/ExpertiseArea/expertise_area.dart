import 'package:flutter/material.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

class ExpertiseArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Color(0xff191D28),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 150, bottom: 20),
            child: constTilte("Expertise Area"),
          ),
          miniText(
              "Am always curious in learning new technologies to keep myself update. For now i have been able "),
          SizedBox(
            height: 10,
          ),
          miniText(
              "to aquire the following skills and always ready to learn upcoming ones"),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                expertiseCard(
                    icon: Icons.phone_android,
                    value: 60,
                    title: "FLUTTER DEVELOPER"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: expertiseCard(
                      icon: Icons.computer, value: 60, title: "WEB DEVELOPER"),
                ),
                expertiseCard(
                    icon: Icons.add_link, value: 60, title: "MICROSOFT SUITE"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.radio_button_unchecked,
                color: commonColor,
              ),
              Icon(
                Icons.radio_button_checked,
                color: commonColor,
              ),
              Icon(
                Icons.radio_button_unchecked,
                color: commonColor,
              )
            ],
          )
        ],
      ),
    );
  }
}

Card expertiseCard({IconData? icon, String? title, value}) {
  return Card(
    elevation: 20,
    color: Color(0xff191D28),
    child: Container(
      margin: EdgeInsets.all(value),
      child: Column(
        children: [
          Icon(
            icon,
            color: commonColor,
            size: 50,
          ),
          SizedBox(height: 15),
          SelectableText(
            title!,
            style: TextStyle(color: Color(0xFF8496E6), fontSize: 25),
          ),
        ],
      ),
    ),
  );
}

miniText(text) {
  return SelectableText(
    text,
    style: TextStyle(color: Color(0xffB0B3C3), height: 1.5),
  );
}

constTilte(title) {
  return SelectableText(
    title,
    style: TextStyle(
      color: commonColor,
      fontSize: 25,
      fontWeight: FontWeight.w900,
    ),
  );
}
