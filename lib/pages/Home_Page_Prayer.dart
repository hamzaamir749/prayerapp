import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'User_Main_Page.dart';
import 'package:prayerapp/services/authentication.dart';
import 'package:prayerapp/pages/root_page.dart';

class Home_Page extends StatefulWidget {

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  void NextTOAdmin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => new RootPage(auth: new Auth(),)));
  }

  void NextTOUser() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => UserMainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            height: 200,
            width: 200,
            child: new Image(
              image: new AssetImage("assets/logo.png"),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: NextTOUser,
                  textColor: Colors.white,
                  color: Colors.black,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "User",
                  ),
                ),
                RaisedButton(
                  onPressed: NextTOAdmin,
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Admin",
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
