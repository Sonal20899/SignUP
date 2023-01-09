import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/shared_preference.dart';

class Sharep_Screen extends StatelessWidget {
  const Sharep_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: (() {
                Auth.setIsIntroCheck("Sonal");
              }),
              child: Text("Checked share_preference"))),
    );
  }
}
