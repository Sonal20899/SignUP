import 'package:flutter/material.dart';
import 'package:flutter_demo/dblist_screen.dart';

import 'data_access.dart';
import 'localdb.dart';

class Task_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddTaskScreen()));
              }),
              child: Text("Task Screen")),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DblistScreen()));
              }),
              child: Text("dblist")),
        ],
      ),
    ));
    //print(response.body.toString());
  }
}
