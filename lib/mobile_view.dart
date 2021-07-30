import 'package:flutter/material.dart';
import 'package:raf_portfolio/mobileView/mobile_expertise_area.dart';
import 'package:raf_portfolio/mobileView/mobile_view_about.dart';
import 'package:raf_portfolio/mobileView/mobile_view_myworks.dart';
import 'package:raf_portfolio/mobileView/mobile_view_testimonial.dart';
import 'package:raf_portfolio/mobileView/profile_view.dart';

class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      appBar: AppBar(
        backgroundColor: firstColor,
      ),
      body: Container(
        child: ListView(
          children: [
            MobileProfileView(),
            MobileAboutView(),
            MobileViewExpertiseArea(),
            MobileViewMyWorks(),
            MobileViewTestimonials()
          ],
        ),
      ),
    );
  }
}
