import 'package:flutter/material.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';
import 'package:raf_portfolio/FrameWorks/frame_works.dart';

class MobileViewMyWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      color: Color(0xff161922),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: constTilte("Featured Works"),
          ),
          miniText(
              "As a developer, i always challenge my self in projects that always come my way These are some of my projects"),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            // color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: smallProjects(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        constTilte("G.Artisan"),
                        miniText(
                            "An App that connect artisans to the general public")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: smallProjects(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        constTilte("G.TodoApp"),
                        miniText(
                            "An App that helps keep users task in cloud- firestore")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: smallProjects(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        constTilte("Covid-App"),
                        miniText(
                            "An App that that educate users on how to protect themselves against the virus. the app also comes with currents updates around the world")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: smallProjects(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        constTilte("Weather App"),
                        miniText(
                            "An App that gives a user the current weather condition base on his search")
                      ],
                    ),
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
