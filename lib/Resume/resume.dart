import 'package:flutter/material.dart';
import 'package:raf_portfolio/ExpertiseArea/expertise_area.dart';
import 'package:raf_portfolio/FrameWorks/frame_works.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      // height: 500,
      color: projectsColo,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: constTilte("Resume"),
          ),
          miniText(
              "A software developer with two years of skilled experience focusing on mobile app development using flutter and a one-month"),
          miniText(
              "experience in couching and training individuals in mobile app development."),
          miniText(
              "Additional experience has been gained in contributing to other"),
          miniText("people’s projects in various flutter communities"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              columnHolder(),
              SizedBox(
                width: 60,
              ),
              columnHolder2()
            ],
          )
        ],
      ),
    );
  }
}

sectionTitle(title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: SelectableText(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}

columnHolder() {
  return Column(
    children: [
      sectionTitle("Education"),
      cardContainer(
          date: "1995-2004",
          course: "Basic Education",
          discriptionOne:
              "I started schooling at the age of 6 from kindagarteen",
          discriptionTwo: "to primary 4",
          instituetion: "Nahdah Islamic School"),
      cardContainer(
          date: "2006-2011",
          course: "Basic Education",
          discriptionOne:
              "Continueship of my basic education in a different school",
          discriptionTwo: "due to my inability to read and write at primary 6",
          instituetion: "Nyohini Presby"),
      cardContainer(
          date: "2011-2014",
          course: "General Science",
          discriptionOne: "I persue above course at the Senior High School",
          discriptionTwo: "with a determination of becoming a doctor one day",
          instituetion: "Tamale Senior High School"),
    ],
  );
}

columnHolder2() {
  return Column(
    children: [
      sectionTitle("Experience"),
      cardContainer(
          date: "2011-2012",
          course: "Ms Office Suet Training",
          discriptionOne: "I had the privilage to to be trained in using",
          discriptionTwo: "Microsoft Office Suite and it tools",
          instituetion: "E-Brain Computer School"),
      cardContainer(
          date: "2017-2018",
          course: "Mobile App Develoment Training",
          discriptionOne: "I had my first experience in this programming",
          discriptionTwo: "world with React-Native",
          instituetion: "Hopin Academy"),
      cardContainer(
          date: "2019-2020",
          course: "Flutter Mobile App Development",
          discriptionOne:
              "My zeal in learning programing certificate in mobile app  ",
          discriptionTwo: "development. Also a Tech facilitator and Youtuber",
          instituetion: "Code Coast"),
    ],
  );
}

cardContainer({date, course, instituetion, discriptionOne, discriptionTwo}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Card(
      color: Color(0xff161922),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 135,
        width: 390,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dateFormate(date: date),
            courseHolder(course: course),
            miniText(discriptionOne),
            miniText(discriptionTwo),
            dateFormate(date: instituetion)
          ],
        ),
      ),
    ),
  );
}

dateFormate({date}) {
  return SelectableText(
    date,
    style: TextStyle(color: Color(0xff5C6279)),
  );
}

courseHolder({course}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: SelectableText(
      course,
      style: TextStyle(
          color: commonColor, fontSize: 20, fontWeight: FontWeight.w800),
    ),
  );
}
