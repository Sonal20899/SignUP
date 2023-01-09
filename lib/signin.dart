import 'package:flutter/material.dart';

class Signin_Screen extends StatelessWidget {
  String? gender;
  bool? checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign In"),
        ),
        backgroundColor: Color.fromARGB(255, 100, 186, 225),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
                //color: Colors.white,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Button
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(20))),
                          child: const Center(child: Text("1")),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text("What's your mode of transport today ? "),
                      ],
                    ),
                    Container(
                      height: 30,
                      child: RadioListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text('Two Wheeler',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15)),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {},
                      ),
                    ),
                    RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Four Wheeler',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15)),
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {},
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Note : Four wheeler and public transport to be selected only if there is 0% usage of two wheeler",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                //color: Colors.white,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(20))),
                          child: const Center(child: Text("2")),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            child: Text(
                                "I have inspected my two wheeler - cluth, breaks, lights type grip, type pressure, oil. "))
                      ],
                    ),
                    Container(
                      height: 20,
                      child: RadioListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text('Yes',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15)),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {},
                      ),
                    ),
                    RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('No',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15)),
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {},
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.fromLTRB(5, 5, 10, 0),
                margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                //color: Colors.white,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      // ignore: unnecessary_const
                      child: const Text(
                        "Click selfie with helmet & Reflector jacket or in 4 wheeler or in public transport",
                        style: TextStyle(
                            color: Color.fromARGB(255, 61, 152, 226),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Image.asset("assets/images/user.png"),
                      height: 80,
                    ),
                    const Text(
                      "Upload Selfie",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                Checkbox(
                                  value: checkboxvalue,
                                  activeColor: Colors.black,
                                  onChanged: (newvalue) {},
                                ),
                                const Text("CheckBox 1")
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                Checkbox(
                                  value: checkboxvalue,
                                  activeColor: Colors.black,
                                  onChanged: (newvalue) {},
                                ),
                                const Text("CheckBox 2")
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                Checkbox(
                                  value: checkboxvalue,
                                  activeColor: Colors.black,
                                  onChanged: (newvalue) {},
                                ),
                                const Text("CheckBox 3")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Center(
                          child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
