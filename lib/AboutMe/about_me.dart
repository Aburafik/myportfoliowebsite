import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

class AbouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 300,
      ),
      // height: 300,
      color: Color(0xff161922),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  // height: 200,
                  child: imageProfile(),
                ),
                aboutMe()
              ],
            ),
          ),
          // SizedBox(
          //   height: 80,
          // ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                RotatedBox(
                  quarterTurns: -45,
                  child: Row(
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
                ),
                //////////////////////
                Container(
                  margin: EdgeInsets.only(left: 20, right: 35),
                  child: Column(
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
                    ],
                  ),
                ),
                ///////////////////////
                Container(
                  child: Column(
                    children: [
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

///Skillls progress bars
skilsProgress({String ?courseTitle, String? level, double ?pecent}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      skillLevel(courseTile: courseTitle, level: level),
      LinearPercentIndicator(
        width: 320.0,
        lineHeight: 4.0,
        percent: pecent!,
        backgroundColor: Color(0xff010101),
        progressColor: commonColor,
      ),
    ],
  );
}

levelText(String text) {
  return SelectableText(
    text,
    style: TextStyle(color: Color(0xffA5A8B1)),
  );
}

skillLevel({String? courseTile, String? level}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    width: 300,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        levelText(courseTile!),
        levelText(level!),
      ],
    ),
  );
}

aboutMe() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
        SelectableText(
          "I am an enthusiastic, responsible and hardworking person.\nBeing worked on different projects helped me to adopt to\nthe changes quickly and made me a mature team worker.\nI am able to work well both in a team environment as well\nas using own initiative. I am an open-minded person and\nready to learn new skills.",
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
        buttonLine()
      ],
    ),
  );
}

buttonLine() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      commonButton(title: Text("HIRE ME")),
      SizedBox(
        width: 20,
      ),
      commonButton(title: Text("- - - ->")),
    ],
  );
}

commonButton({Widget? title}) {
  return MaterialButton(
      color: commonColor,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: title),
      onPressed: () {});
}
