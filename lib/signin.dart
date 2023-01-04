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
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                margin: EdgeInsets.all(15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10))),
                          child: const Center(child: Text("1")),
                        ),
                        const Text("What's your mode of transport today ? "),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                margin: EdgeInsets.all(15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10))),
                          child: const Center(child: Text("2")),
                        ),
                        Expanded(
                            child: Text(
                                "I have inspected my two wheeler - cluth, breaks, lights type grip, type pressure, oil. "))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                margin: EdgeInsets.all(15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Expanded(
                            child: Text(
                          "Click selfie with helmet & Reflector jacket or in 4 wheeler or in public transport",
                          style: TextStyle(color: Colors.blue),
                        )),
                      ],
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
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: checkboxvalue,
                                activeColor: Colors.black,
                                onChanged: (newvalue) {},
                              ),
                              const Text("CheckBox 1")
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: checkboxvalue,
                                activeColor: Colors.black,
                                onChanged: (newvalue) {},
                              ),
                              const Text("CheckBox 2")
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: checkboxvalue,
                                activeColor: Colors.black,
                                onChanged: (newvalue) {},
                              ),
                              const Text("CheckBox 3")
                            ],
                          ),
                          ElevatedButton(
                              onPressed: (() {}), child: Text("Sign In"))
                        ],
                      ),
                    ),
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
