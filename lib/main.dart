import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/Expenses.dart';

import 'package:flutter_demo/myntra.dart';
import 'package:flutter_demo/signin.dart';

import 'package:flutter_demo/signout.dart';

import 'button.dart';
import 'camera_permissoin.dart';
import 'data_access.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: Expenses_Screen())); //MyApp()
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
