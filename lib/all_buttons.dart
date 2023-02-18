import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: 800,
      width: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            child: Text("Simple Dialog"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: const Text('Simple Dialog, Is it nice?'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'Yes');
                          },
                          child: const Text('Yes'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'No');
                          },
                          child: const Text('No'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'No');
                          },
                          child: const Text('Cancel'),
                        ),
                      ],
                    );
                  });
            },
          ),
          ElevatedButton(
            child: Text("Alert Dialog"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: const Text('Is it nice?'),
                      title: const Text('Alert Dialog'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Yes');
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'No');
                          },
                          child: const Text('No'),
                        ),
                      ],
                    );
                  });
            },
          ),
          ElevatedButton(
            child: Text("Date Picker Dialog"),
            onPressed: () {
              final DateTime now = DateTime.now();
              showDatePicker(
                      context: context,
                      initialDate: now,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2050))
                  .then((DateTime? onValue) {
                // _showSnackBar('$onValue', 'ok');
              });
            },
          ),
          ElevatedButton(
            child: Text("Timer Picker Dialog"),
            onPressed: () {
              final DateTime now = DateTime.now();
              showTimePicker(
                      context: context,
                      initialTime:
                          TimeOfDay(hour: now.hour, minute: now.minute))
                  .then((TimeOfDay? onValue) {
                //_showSnackBar(onValue?.format(context) ?? '', 'ok');
              });
            },
          ),
          ElevatedButton(
            child: Text("Cupertino Dialog"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: const Text('Welcome'),
                      content: const Text('Cupertino Dialog, Is it nice?'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          onPressed: () {
                            Navigator.pop(context, 'Yes');
                          },
                          child: const Text('Yes'),
                        ),
                        CupertinoDialogAction(
                          onPressed: () {
                            Navigator.pop(context, 'No');
                          },
                          child: const Text('No'),
                        ),
                      ],
                    );
                  });
            },
          )
        ],
      ),
    )));
  }
}
