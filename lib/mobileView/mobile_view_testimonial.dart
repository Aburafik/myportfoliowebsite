import 'package:flutter/material.dart';
import 'package:raf_portfolio/AboutMe/about_me.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';
import 'package:raf_portfolio/FormField/form_field.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';
import 'package:raf_portfolio/Testimonials/testimonials.dart';

class MobileViewTestimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff161922),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          constTilte("Testimonials"),
          miniText(
              "My commitement and hard hardwork towards my job got people to always talk about my experience and dedication towards work like these individuals below"),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                testimonialCard(),
                testimonialCard(),
                testimonialCard()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: constTilte("My Valuable Partners"),
          ),
          miniText(
              "due to my hardwork and dedication, i have worked with a number of individuals and instituetions. Some of which agreed to be mentioned as at when i wish to make a reference. Noteable among them are:"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              partnersLogos(radius: 30.0),
              partnersLogos(radius: 30.0),
              partnersLogos(radius: 30.0),
            ],
          ),
          ///////////////
          ContectWithMe()
        ],
      ),
    );
  }
}

class ContectWithMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "Have any Project in Mind ?",
              style: TextStyle(color: Color(0xFFA1A6B4), fontSize: 20),
            ),
          ),
          Text(
            "Just Say Hello !",
            style: TextStyle(fontSize: 20, color: commonColor),
          ),
          SizedBox(
            height: 30,
          ),
          commonButton(
              title: GestureDetector(
            child: Text("Hire Me"),
            onTap: () {
              launchURL(url: "email:aburaf892@gmail.com");
            },
          )),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                constTilte("Get In Touch"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addressTitle(titletext: "+233551143980"),
                          addressTitle(titletext: "rfkabubakari@gmail.com"),
                          addressTitle(
                              titletext:
                                  "Lugshina, Street Name,\nTamale, Ghana"),
                        ],
                      ),
                    ),
                    Row(
                      children: [],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
