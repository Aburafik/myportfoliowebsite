import 'package:flutter/material.dart';
import 'package:raf_portfolio/AboutMe/about_me.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

class MobileAboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Color(0xff161922),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [mobileAboutMe()],
      ),
    );
  }
}

mobileAboutMe() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 25,
                  child: Divider(
                    height: 5,
                    color: commonColor,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SelectableText(
                  "About Me",
                  style: TextStyle(
                      color: commonColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
        ),
        SelectableText(
          "I am an enthusiastic, responsible and hardworking person. Being worked on different projects helped me to adopt to the changes quickly and made me a mature team worker. I am able to work well both in a team environment as well as using own initiative. I am an open-minded person and ready to learn new skills.",
          style: TextStyle(color: Color(0xffB0B2BF), height: 2),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: SelectableText("CitiZenRaf",
              style: TextStyle(
                color: commonColor,
                // fontStyle: FontStyle.italic,
                fontFamily: "Monsieur La Doulaise",
                fontSize: 25,
              )),
        ),
        // buttonLine()
        Container(child: mySkills())
      ],
    ),
  );
}

Container mySkills() {
  return Container(
    padding: EdgeInsets.only(top: 30),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
                child: Divider(
                  height: 15,
                  color: commonColor,
                ),
              ),
              SelectableText(
                "My Skills",
                style: TextStyle(
                    fontSize: 25,
                    color: commonColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          //////////////////////
          Center(
            child: Container(
              // margin: EdgeInsets.only(left: 20, right: 35),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    skilsProgress(
                        courseTitle: "Mobile App (Flutter)",
                        level: "90%",
                        pecent: 0.96),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: skilsProgress(
                          courseTitle: "Web Development",
                          level: "70%",
                          pecent: 0.70),
                    ),
                    skilsProgress(
                        courseTitle: "Dart Language",
                        level: "96%",
                        pecent: 0.96),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: skilsProgress(
                          courseTitle: "React-Native",
                          level: "60%",
                          pecent: 0.60),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///////////////////////
        ],
      ),
    ),
  );
}
