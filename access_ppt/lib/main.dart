// maro mahakal

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    DatabaseReference reference = FirebaseDatabase.instance.reference();
    return Scaffold(
      backgroundColor: Color(0xfF651FFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 72,
              backgroundColor: Color(0xffF50057),
              child: IconButton(
                splashColor: Colors.green,
                iconSize: 100,
                onPressed: () {
                  reference.update({"cmd": "up"});
                },
                icon: Icon(
                  Icons.arrow_drop_up,
                  color: Colors.yellow,
                ),
              ),
            ),
            CircleAvatar(
              radius: 72,
              backgroundColor: Color(0xffF50057),
              child: IconButton(
                splashColor: Colors.green,
                iconSize: 100,
                onPressed: () {
                  reference.update({"cmd": "down"});
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
