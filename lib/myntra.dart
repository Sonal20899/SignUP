// ignore_for_file: dead_code

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_demo/myntra.dart';
import 'package:flutter_demo/signin.dart';

class MyntraScreen extends StatefulWidget {
  @override
  State<MyntraScreen> createState() => _MyntraScreenState();
}

class _MyntraScreenState extends State<MyntraScreen> {
  String _msg = "";
  bool? checkboxvalue = false;
  final _formKey = GlobalKey<FormState>();
  String name = "";

  @override
  void initState() {
    date();
    super.initState();
  }

  date() {
    print("hi");
    Map<String, String> Mapvalue = HashMap();
    Mapvalue['name'] = 'Soni';
    Mapvalue['name1'] = 'Sonal';
    print(Mapvalue);
  }

  TextEditingController unamecontroller = TextEditingController();
  TextEditingController upwdcontroller = TextEditingController();
  String names = "";
  String password = "";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Myntra'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Container(
                  width: 800,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 300,
                            height: 150,
                            color: Colors.yellow,
                            child: Image.asset("assets/images/Myntra.png")),
                        Text("UserName - ${names}"),
                        Text("Password - ${password}"),
                        TextFormField(
                          controller: unamecontroller,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            prefixIcon: Icon(Icons.people),
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter username';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: upwdcontroller,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              prefixIcon: Icon(Icons.key_sharp),
                              labelText: "Password",
                              suffixIcon: Icon(Icons.remove_red_eye)
                              //icon at head of input
                              ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Password';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: checkboxvalue,
                                  activeColor: Colors.black,
                                  onChanged: (newvalue) {
                                    setState(() {
                                      checkboxvalue = newvalue;
                                    });
                                  },
                                ),
                                const Text("Remember me")
                              ],
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  // Validate returns true if the form is valid, or false otherwise.
                                  if (_formKey.currentState!.validate()) {
                                    names = unamecontroller.text.toString();
                                    password = upwdcontroller.text.toString();
                                    getLoginCheckApi(names, password);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Signin_Screen()),
                                    );
                                  }
                                },
                                child: const Text('Submit')),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextButton(
                          onPressed: (() {}),
                          child: const Text("Forgot Password?"),
                        ),
                        TextButton(
                            onPressed: (() {}),
                            child: const Text("Know Your Unique ID"))
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  } // build method

  getLoginCheckApi(String username, String password) {
    if ((username == "sonal") && (password == "s")) {
      setState(() {
        names = unamecontroller.text.toString();
        password = upwdcontroller.text.toString();
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Credential')),
      );
    }
  }
}
