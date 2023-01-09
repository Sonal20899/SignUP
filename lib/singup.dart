import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatelessWidget {
  String? gender;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 120,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RadioListTile(
                title: const Text('Abc',
                    style: TextStyle(color: Colors.black54, fontSize: 10)),
                value: "male",
                groupValue: gender,
                onChanged: (value) {},
              ),
              RadioListTile(
                title: const Text('Abc',
                    style: TextStyle(color: Colors.black54, fontSize: 10)),
                value: "female",
                groupValue: gender,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
