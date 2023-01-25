import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_demo/data_access.dart';
import 'package:flutter_demo/model/emp_model.dart';
import 'package:flutter_demo/practice.dart';

import 'Conversion.dart';
import 'Fetchdata_Screen.dart';
import 'button.dart';
import 'localdb.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: AddTaskScreen())); //MyApp()
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var json = "";
  var decode = "";
  EmpModel empobject = new EmpModel(
      id: "001", fullname: "Sonal", email: "gmail", address: 'virar');

  // ignore: empty_constructor_bodies
  String empJson = '{"id": "001", "Fullname": "sonal", "email": "gmail.com"}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: (() {
                Map<String, dynamic> empMap = empobject.toMap();
                json = jsonEncode(empMap);
                print(json.toString());
              }),
              child: Text("Serialized")),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: (() {
                var decode = jsonDecode(empJson);
                Map<String, dynamic> empMap = decode;
                EmpModel newuser = new EmpModel.fromMap(empMap);
                // ignore: avoid_print
                print(newuser.toString());
              }),
              child: Text("De - Serialized"))
        ]),
      ),
    );
  }

  List<EmpModel> getValue() {
    EmpModel empModel = EmpModel(
        id: "1",
        email: "poojachauhan85512gmail.com",
        fullname: "pooja Chauhan ",
        address: 'virar');
    EmpModel empModel1 = EmpModel(
        id: "2", email: "sonal.com", fullname: "sonal ", address: 'virar');

    List<EmpModel> listdata = <EmpModel>[];
    listdata.add(empModel);
    listdata.add(empModel1);

    return listdata;
  }
}
