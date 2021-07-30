import 'package:flutter/material.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

Color firstColor = Color(0xff191D28);

class MobileProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 200,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    salutation(),
                    profileName(),
                    socalMediahandels(),
                  ],
                ),
              ),
              imageProfile()
            ],
          ),
          profileDescriptionText(),
        ],
      ),
    );
  }

  Row salutation() {
    return Row(
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
    );
  }
}

profileName() {
  return RichText(
      text: TextSpan(
          text: "I'm ",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF)),
          children: [
        TextSpan(text: "Abubakari\n", style: TextStyle(color: commonColor)),
        TextSpan(text: "Abdul Rafik")
      ]));
}

profileDescriptionText() {
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
                  "a Flutter Developer,Web Developer(Front-end) and a Sanitation activist located in Ghana West Africa, looking for work around the globe.")
        ]),
  );
}
