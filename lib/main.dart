import 'package:flutter/material.dart';
import 'package:prayerapp/services/authentication.dart';
import 'package:prayerapp/pages/root_page.dart';
import 'package:prayerapp/pages/Splash_Screen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Church App',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.green,
        ),
        /* home: new RootPage(auth: new Auth()));*/
        home: Splash_Screen());
  }
}
