import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'dart:async';
import 'Home_Page_Prayer.dart';

class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
      image: AssetImage('assets/church_splash.png'),
      fit: BoxFit.cover,
    )));
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home_Page(),
          ));
    });
  }
}
