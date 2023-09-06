import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:raf_portfolio/homePage.dart';
import 'package:url_launcher/url_launcher.dart';

Color commonColor = Color(0xffFFCB76);
PageController controller = PageController();
void scrollToIndex(int index) {
  controller.animateToPage(index + 1,
      duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
}

launchURL({url}) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 200, top: 150),
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
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "HELLO",
                              style: TextStyle(color: commonColor),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Image.asset("images/hi.gif"),
                          ),
                        ],
                      ),
                      myName(),
                      descriptionText(),
                      cvButton(),
                    ],
                  ),
                ),
                socalMediahandels()
              ],
            ),
          ),
          imageProfile(),
          Container(
            margin: EdgeInsets.only(top: 300),
            child: RotatedBox(
              quarterTurns: 45,
              child: Row(
                children: [
                  AnimatedTextKit(repeatForever: true, animatedTexts: [
                    FadeAnimatedText("Scroll down",
                        textStyle: TextStyle(color: commonColor)),
                    FadeAnimatedText("Scroll down",
                        textStyle: TextStyle(color: commonColor)),
                  ]),
                  Icon(
                    Icons.arrow_forward,
                    color: commonColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding cvButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 100),
      child: MaterialButton(
          color: commonColor,
          child: Center(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("CHECK MY CV")),
          ),
          onPressed: () {
            launchURL(
                url:
                    "https://drive.google.com/file/d/1CZFGnT8M8z-_1eeJSmYL7sv-TGxVNPCY/view?usp=drive_link");
          }),
    );
  }
}

imageProfile() {
  return Expanded(
    child: Image.asset(
      "images/raf2.png",
      // height: 600,
    ),
  );
}

descriptionText() {
  return RichText(
    text: TextSpan(
        text: "This is ",
        style: TextStyle(color: Color(0xff5E6170), height: 2),
        children: [
          TextSpan(
              text: "Abubakari Abdul rafik, ",
              style: TextStyle(color: commonColor)),
          TextSpan(
              text:
                  "a Flutter Developer,Web Developer(Front-end)\nand a Sanitation activist located in Ghana West Africa, looking for work\naround the globe.")
        ]),
  );
}

myName() {
  return RichText(
      text: TextSpan(
          text: "I'm ",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF)),
          children: [
        TextSpan(text: "Abubakari ", style: TextStyle(color: commonColor)),
        TextSpan(text: "Abdul Rafik")
      ]));
}

navBar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        appLogo(),
        Container(
          child: Row(
              children: List.generate(8, (index) {
            return MaterialButton(
              splashColor: Color(0xff191D28),
              onPressed: () {
                scrollToIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: pageviews[index + 1].title,
              ),
            );
          })),
        ),
        Container(
          child: Row(
            children: [
              labelText("FRA"),
              labelText("FRE"),
              labelText("ENG"),
            ],
          ),
        )
      ],
    ),
  );
}

labelText(String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    // padding: const EdgeInsets.only(left: 15),
    child: SelectableText(
      text,
      style: TextStyle(color: Color(0xff9295A3)),
    ),
  );
}

appLogo() {
  return SelectableText(
    "RAF",
    style: TextStyle(
        fontSize: 25, color: commonColor, fontWeight: FontWeight.bold),
  );
}

socalMediahandels() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      socialMediaIcons(
          icon: EvaIcons.linkedin,
          onpress: () {
            launchURL(
                url:
                    "https://www.linkedin.com/in/abubakari-abdul-rafik-428210208/");
          }),
      socialMediaIcons(
          icon: EvaIcons.facebook,
          onpress: () {
            launchURL(url: "https://web.facebook.com/citizen.raf/");
          }),
      socialMediaIcons(
          icon: EvaIcons.github,
          onpress: () {
            launchURL(url: "https://github.com/Aburafik");
          }),
    ],
  );
}

socialMediaIcons({icon, Function()? onpress}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: IconButton(
      hoverColor: Colors.white,
      onPressed: onpress!,
      icon: Icon(icon),
      color: Color(0xffADB1BD),
    ),
  );
}
