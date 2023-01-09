import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/buttons.dart';
import 'package:flutter_demo/connection_checked.dart';
import 'package:flutter_demo/imgpicker.dart';
import 'package:flutter_demo/myntra.dart';
import 'package:flutter_demo/share_preferencetask.dart';
import 'package:flutter_demo/shared_preference.dart';
import 'package:flutter_demo/signout.dart';

void main() {
  runApp(MaterialApp(home: Signout_Screen())); //MyApp()
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: MyHomePage(),
    );
  }
}

////
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    //print("${Auth.getIsIntroCheck()}");

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyntraScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
