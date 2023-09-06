import 'package:flutter/material.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

Color projectsColo = Color(0xff191D28);

class FrameWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      // height: 900,
      color: Color(0xff161922),
      //0247137577
      child: Column(
        children: [
          constTilte("Featured Works"),
          miniText(
              "As a developer, i always challenge my self in projects that always come my way"),
          miniText("These are some of my projects"),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                firstContainer(
                  firstItem: addMore(child: iconHolder(), color: commonColor),
                  secondItem: projectType(),
                  thirdItem: smallProjects(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        constTilte("D Music Player"),
                        miniText(
                            "A music player app built with flutter for entertainment,the app fetches the playlists from Api")
                      ],
                    ),
                  ),
                  fourthItem: projectType(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: firstContainer(
                    firstItem: smallProjects(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          constTilte("Green Ghana App"),
                          miniText(
                              "A Re-designed of the Green Ghana app, the app helps individuals and organizations to upload planted trees to a remote location, and also keep track of trees planted")
                        ],
                      ),
                    ),
                    secondItem: projectType(),
                    thirdItem: addMore(
                      color: projectsColo,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          constTilte("FeedHub"),
                          miniText(
                              "An app that helps people to donate food to the needy and NGos")
                        ],
                      ),
                    ),
                    fourthItem: projectType(),
                  ),
                ),
                firstContainer(
                  firstItem: addMore(
                    color: projectsColo,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        constTilte("Ilm Online"),
                        miniText(
                            "An App tha helps users to learn Islamic knowledge at the comfort of theie homes")
                      ],
                    ),
                  ),
                  secondItem: projectType(),
                  thirdItem: smallProjects(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        constTilte("Covid-App"),
                        miniText(
                            "An App that that educate users on how to protect themselves against the virus. the app also comes with currents updates around the world")
                      ],
                    ),
                  ),
                  fourthItem: projectType(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

firstContainer({firstItem, secondItem, thirdItem, fourthItem}) {
  return Container(
    child: Column(
      children: [firstItem, secondItem, thirdItem, fourthItem],
    ),
  );
}

projectType() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Text(
      "",
      style: TextStyle(color: commonColor, fontSize: 20),
    ),
  );
}

addMore({Widget? child, Color? color}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 330,
    width: 220,
    color: color,
    child: Center(
      child: child,
    ),
  );
}

smallProjects({Widget? child}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    color: Color(0xff191D28),
    height: 180,
    width: 250,
    child: child,
  );
}

iconHolder() {
  return Icon(
    Icons.add,
    size: 40,
  );
}
