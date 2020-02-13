import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class UserMainPage extends StatefulWidget {
  @override
  _UserMainPageState createState() => _UserMainPageState();
}

class _UserMainPageState extends State<UserMainPage> {
  final FirebaseDatabase _database = FirebaseDatabase.instance;

/*  new Row(
  children: <Widget>[
  new Expanded(
  child: new TextField(
  autofocus: true,
  decoration: new InputDecoration(
  labelText:  val,
  ),
  )),
  ],
  )*/
  showAddTodoDialog(BuildContext context, String val) async {
    String data = "Please Wait";
    await _database
        .reference()
        .child(val)
        .child("text")
        .once()
        .then((DataSnapshot dataSnapShot) {
      data = dataSnapShot.value;
      print(data);
    });
    await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(val),
            content: new Text(data),
            actions: <Widget>[
              new FlatButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Church App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new InkWell(
            onTap: () {
              showAddTodoDialog(context, "Vorbitori");
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Vorbitori",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                  new Padding(padding: new EdgeInsets.all(35))
                ],
              ),
            ),
          ),
          new InkWell(
            onTap: () {
              showAddTodoDialog(context, "Aniversări");
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Aniversări",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontStyle: FontStyle.italic),
                  ),
                  new Padding(padding: new EdgeInsets.all(35))
                ],
              ),
            ),
          ),
          new InkWell(
            onTap: () {
              showAddTodoDialog(context, "Anunțuri");
            },
            child: Card(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: new Row(

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text(
                    "Anunțuri",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                  new Padding(padding: new EdgeInsets.all(35))
                ],
              ),
            ),
          ),
          new InkWell(
            onTap: () {
              showAddTodoDialog(context, "Apusul soarelui");
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[

                  Text(
                    "Apusul soarelui",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontStyle: FontStyle.italic),
                  ),
                  new Padding(padding: new EdgeInsets.all(35))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
