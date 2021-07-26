import 'package:flutter/material.dart';
import 'package:raf_portfolio/AboutMe/about_me.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

class GetInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 40),
            child: Text(
              "Have any Project in Mind ?",
              style: TextStyle(color: Color(0xFFA1A6B4), fontSize: 25),
            ),
          ),
          Text(
            "Just Say Hello !",
            style: TextStyle(fontSize: 30, color: commonColor),
          ),
          SizedBox(
            height: 50,
          ),
          commonButton(title: Text("Hire Me")),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
