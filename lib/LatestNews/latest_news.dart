import 'package:flutter/material.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

String youtubeLink = "https://youtu.be/dFsQdC-SjOk";
String youthforsanitaion = "https://youth-for-sanitation.yolasite.com/";
String gci = "https://web.facebook.com/ghanacodeinitiative";

class LatestNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle clickStyle =
        TextStyle(color: Colors.white70, fontWeight: FontWeight.w300);
    return Container(
      height: 700,
      color: Color(0xff161922),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, bottom: 50),
            child: constTilte("Latest News"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              storyCard(
                image: "images/code.jpg",
                widget: constTilte(
                  "High Code Initiative",
                ),
                date: "JULY 05, 2021",
                viewMore: MaterialButton(
                  child: Text(
                    "Visit Site -->",
                    style: clickStyle,
                  ),
                  onPressed: () {
                    launchURL(url: gci);
                  },
                ),
              ),
              storyCard(
                image: "images/easy.jpg",
                widget: constTilte("EasyCoder- Youtube"),
                date: "MAY 21, 2021",
                viewMore: MaterialButton(
                  child: Text(
                    "View Channel -->",
                    style: clickStyle,
                  ),
                  onPressed: () {
                    launchURL(url: youtubeLink);
                  },
                ),
              ),
              storyCard(
                image: "images/YFS.jpg",
                widget: constTilte("Youth for Sanitation"),
                date: "FEBRUATY 03,2021",
                viewMore: MaterialButton(
                  child: Text(
                    "Visit Site -->",
                    style: clickStyle,
                  ),
                  onPressed: () {
                    launchURL(url: youthforsanitaion);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

storyCard({Widget ?widget, Widget? viewMore, String ?image, String ?date}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    height: 350,
    width: 290,
    color: Color(0xff1B212F),
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              height: 150,
              // color: Colors.white,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image!))),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                miniText("By: Citizen Raf"),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 50,
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 135,
                    child: Text(
                      date!,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                color: Color(0xffFFCC73),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 40),
                child: widget,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: viewMore,
                  ))
            ],
          ),
        )
      ],
    ),
  );
}
