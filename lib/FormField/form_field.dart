import 'package:flutter/material.dart';
import 'package:raf_portfolio/AboutMe/about_me.dart';
import 'package:raf_portfolio/Footer/footer.dart';
import 'package:raf_portfolio/ProfileviewPage/profile_view.dart';

class FillForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff161922),
      // margin: EdgeInsets.only(top: 300),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Container(
                    height: 400,
                    color: Color(0xff191D28),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    messageContainer(),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "-- --->",
                        style: TextStyle(
                            color: commonColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                    formContainer(),
                  ],
                )
              ],
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}

formContainer() {
  return Card(
    color: Color(0xff1B212F),
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(40),
      height: 450,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          textFields(label: "Your Name"),
          textFields(label: "Email Address"),
          textFields(label: "Phone Number (Optional)"),
          textFields(label: "Projec Description"),
          SizedBox(
            height: 40,
          ),
          commonButton(title: Text("HIRE ME"))
        ],
      ),
    ),
  );
}

textFields({String ?label}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: TextField(
      style: TextStyle(color: Color(0xff555B72)),
      cursorColor: Color(0xff555B72),
      decoration: InputDecoration(
          focusColor: Color(0xff555B72),
          labelText: label,
          labelStyle: TextStyle(color: Color(0xff555B72))),
    ),
  );
}

messageContainer() {
  return Container(
    margin: EdgeInsets.only(right: 30, top: 70),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text:
                    "Let make something new,\ndifferent and more meaningful,\nor make thing more accessible through\nweb or mobile app ?",
                style: TextStyle(color: Color(0xffBCBFCF), fontSize: 20, fontWeight: FontWeight.w600, height: 1.5),
                children: [
              TextSpan(
                  text: "Just Say Hello !",
                  style: TextStyle(color: Color(0xffF1C470)))
            ])),
        SizedBox(
          height: 120,
        ),
        addressTitle(titletext: "+233551143980"),
        addressTitle(titletext: "rfkabubakari@gmail.com"),
        addressTitle(titletext: "Lugshina, Street Name,\nTamale, Ghana"),
        SizedBox(
          height: 20,
        ),
        socalMediahandels()
      ],
    ),
  );
}

addressTitle({titletext}) {
  return Row(
    children: [
      SizedBox(
        width: 20,
        height: 40,
        child: Divider(
          color: Color(0xff383E4D),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      SelectableText(
        titletext,
        style: TextStyle(color: Color(0xffF1C470)),
      ),
    ],
  );
}
