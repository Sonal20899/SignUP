// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/dblist_screen.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

import 'database_helpers.dart';
import 'model/db_task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController typecontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();
  String title1 = "";
  String desc1 = "";
  String type1 = "";
  final _formKey = GlobalKey<FormState>();

  late final _databaseInstance = AppDatabase.sharedInstance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Column(children: [
        const SizedBox(
          height: 100,
        ),
        TextFormField(
          controller: titlecontroller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            labelText: "title",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Title';
            } else {
              return null;
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: typecontroller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            labelText: "Type",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Type';
            } else {
              return null;
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: desccontroller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            labelText: "Description",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Description';
            } else {
              return null;
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: (() {
              if (_formKey.currentState!.validate()) {
                title1 = titlecontroller.text.toString();
                type1 = typecontroller.text.toString();
                desc1 = desccontroller.text.toString();
                print(title1);
                print(type1);
                print(desc1);
                submiteTaskToDB(title1, desc1, type1);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DBListScreen()),
                );
              }
            }),
            child: Text("Submit"))
      ]),
    ));
  }

  submiteTaskToDB(String title, String desc, String type) {
    String uuid = const Uuid().v1().toString();

    DBTask dbTask =
        DBTask(Title: title1, Description: desc1, type: type1, id: uuid);
    TasksDao(_databaseInstance).addTask(dbTask);
  }
}
