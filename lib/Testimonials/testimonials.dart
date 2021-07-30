import 'package:flutter/material.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';
import 'package:raf_portfolio/FrameWorks/frame_works.dart';
import 'package:raf_portfolio/GetInTouch/get_in_touch.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';
import 'package:raf_portfolio/Resume/resume.dart';

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      color: Color(0xff161922),
      child: Column(
        children: [
          constTilte("Testimonials"),
          SizedBox(
            height: 15,
          ),
          miniText(
              "My commitement and hard hardwork towards my job got people to always talk about my experience and"),
          miniText("dedication towards work like these individuals below"),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [testimonialCard(), testimonialCard(), testimonialCard()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
                child: Divider(
                  color: commonColor,
                  height: 25,
                ),
              ),
              slideIcon(),
              slideIcon(),
              slideIcon(),
            ],
          ),
        ],
      ),
    );
  }

  slideIcon() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Icon(
        Icons.radio_button_checked,
        color: Color(0xff6F7996),
        size: 15,
      ),
    );
  }
}

testimonialCard() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.symmetric(horizontal: 15),
    height: 330,
    width: 280,
    color: Color(0xff1B212F),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.format_quote_outlined,
            color: Color(0xFF232835),
            size: 50,
          ),
        ),
        Flexible(
          child: SelectableText(
            "Raf as we always call him, is an active and commited developer who always take his task seriously. Working with him always bring joy, and am looking forward in ",
            style: TextStyle(
                color: Color(0xFF5F657C),
                fontStyle: FontStyle.italic,
                height: 1.5),
          ),
        ),
        witness()
      ],
    ),
  );
}

witness() {
  return Row(
    children: [
      CircleAvatar(
        backgroundColor: Color(0xFF6D7283),
        radius: 30,
        child: Center(
          child: Icon(
            Icons.person,
            color: Color(0xFF5F657C),
            size: 50,
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          courseHolder(course: "Abu Stephine"),
          miniText("CEO of ZT Media"),
        ],
      )
    ],
  );
}

partnersLogos({radius}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 30,
      top: 30,
    ),
    child: CircleAvatar(
      radius: radius,
      backgroundColor: Color(0xFF6D7283),
      child: Center(
        child: Icon(
          Icons.person,
          size: 50,
          color: Color(0xFF5F657C),
        ),
      ),
    ),
  );
}

class MyValuebleCustomers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: projectsColo,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, bottom: 15),
            child: constTilte("My Valuable Partners"),
          ),
          miniText(
              "due to my hardwork and dedication, i have worked with a number of individuals and instituetions. Some of which agreed"),
          miniText(
            "to be mentioned as at when i wish to make a reference. Noteable among them are:",
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              partnersLogos(radius: 50.0),
              partnersLogos(radius: 50.0),
              partnersLogos(radius: 50.0),
            ],
          ),
          GetInTouch()
          //
        ],
      ),
    );
  }
}
