import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/shared_preference.dart';

import 'data_access.dart';

class Button_Screen extends StatelessWidget {
  const Button_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadDataInternet()),
                );
              }),
              child: Text("Data_Access"))),
    );
  }
}
