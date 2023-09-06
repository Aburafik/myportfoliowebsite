import 'package:flutter/material.dart';
import 'package:raf_portfolio/AboutMe/about_me.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';
import 'package:raf_portfolio/FormField/form_field.dart';
import 'package:raf_portfolio/FrameWorks/frame_works.dart';
import 'package:raf_portfolio/LatestNews/latest_news.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';
import 'package:raf_portfolio/Resume/resume.dart';
import 'package:raf_portfolio/Testimonials/testimonials.dart';
import 'package:raf_portfolio/mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

TextStyle navStyle = TextStyle(color: Color(0xff9295A3));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: MobileView(),
        desktop: Scaffold(
          backgroundColor: Color(0xff191D28),
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                navBar(),
                Container(
                  child: Expanded(
                      child: PageView(
                    scrollDirection: Axis.vertical,
                    pageSnapping: false,
                    controller: controller,
                    children: List.generate(pageviews.length, (index) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          // height: double.maxFinite,
                          child: pageviews[index].views);
                    }),
                  )),
                )
              ],
            ),
          ),
        ));
  }
}

class Pages {
  Widget? title;
  Widget ?views;
  Pages({this.title, this.views});
}

List<Pages> pageviews = [
  Pages(
      title: Text(
        "PROFILE",
        style: navStyle,
      ),
      views: ProfileView()),
  Pages(
      title: Text(
        "ABOUT",
        style: navStyle,
      ),
      views: AbouPage()),
  Pages(
      title: Text(
        "EXPERTISE AREA",
        style: navStyle,
      ),
      views: ExpertiseArea()),
  Pages(
      title: Text(
        "FEATURED WORKS",
        style: navStyle,
      ),
      views: FrameWorks()),
  Pages(
      title: Text(
        "MY RESUME",
        style: navStyle,
      ),
      views: Resume()),
  Pages(
      title: Text(
        "TESTIMONIALS",
        style: navStyle,
      ),
      views: Testimonials()),
  Pages(
      title: Text(
        "CUSTOMERS",
        style: navStyle,
      ),
      views: MyValuebleCustomers()),
  Pages(
      title: Text(
        "LATEST NEWS",
        style: navStyle,
      ),
      views: LatestNews()),
  Pages(
      title: Text(
        "CONTACT ME",
        style: navStyle,
      ),
      views: FillForm()),
  // Pages(title: Text("Footer"), views: Footer()),
];
