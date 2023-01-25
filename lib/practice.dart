import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class practice extends StatelessWidget {
  const practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          color: Colors.red,
          height: 80,
          width: 200,
          child: ListTile(
            leading: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 50,
              color: Colors.yellow,
              child: Text("1"),
            ),
            title: Text("sonal"),
            subtitle: Text("1"),
          ),
        )
      ],
    ));
  }
}
