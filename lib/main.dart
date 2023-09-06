import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raf',
      theme: ThemeData(
        primaryColor: Color(0xff555B72),
      ),
      home: HomePage(),
    );
  }
}
