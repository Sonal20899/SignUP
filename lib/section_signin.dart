import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/custom_text_style.dart';

class Section_Signin extends StatefulWidget {
  const Section_Signin({super.key});

  @override
  State<Section_Signin> createState() => _Section_SigninState();
}

class _Section_SigninState extends State<Section_Signin> {
  String? transportmode;
  String? gender;
  String? inspection;
  String? HelmetStatus;
  String? JacketStatus;
  String? unofficialrider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign In"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Card(
                  child: Container(
                    //color: Colors.amber,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Button
                            Container(
                              height: 30,
                              width: 60,
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(20))),
                              child: const Center(
                                  child: Text(
                                "1",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                                "What's your mode of transport today ? "),
                          ],
                        ),
                        Container(
                          height: 30,
                          child: RadioListTile(
                            contentPadding: EdgeInsets.zero,
                            title: CustomTextStyle.regular(text: "Two Wheeler"),
                            value: "two",
                            groupValue: transportmode,
                            onChanged: (value) {
                              setState(() {
                                transportmode = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          height: 30,
                          child: RadioListTile(
                            contentPadding: EdgeInsets.zero,
                            title: CustomTextStyle.regular(
                                text:
                                    "Four Wheeler - Self drive only (0% usage of 2W)"),
                            value: "Four",
                            groupValue: transportmode,
                            onChanged: (value) {
                              setState(() {
                                transportmode = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          height: 30,
                          child: RadioListTile(
                            contentPadding: EdgeInsets.zero,
                            title: CustomTextStyle.regular(
                                text: "Public Transport (0% usage of 2W)"),
                            value: "Public",
                            groupValue: transportmode,
                            onChanged: (value) {
                              setState(() {
                                transportmode = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          height: 30,
                          child: RadioListTile(
                            contentPadding: EdgeInsets.zero,
                            title:
                                CustomTextStyle.regular(text: "Multiple modes"),
                            value: "Other",
                            groupValue: transportmode,
                            onChanged: (value) {
                              setState(() {
                                transportmode = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  child: const Text(
                                "Note : Four Wheeler and Public Transport to be selected only if there is 0% usage of two wheeler. Even if you are using two wheeler for half kilometer you must select the option as two wheeler and mention appropiate public transport usage detial at theend of the day.",
                                style: TextStyle(color: Colors.red),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  child: Container(
                    child: Column(children: [
                      Row(
                        children: [
                          // Button
                          Container(
                            height: 30,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(20))),
                            child: const Center(
                                child: Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Text(
                                "I have inspected my two wheeler - cluth, breaks, lights type grip, type pressure, oil, fuel level and it is in a good condition for a safe ride"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Yes'),
                              leading: Radio(
                                value: "yes",
                                groupValue: inspection,
                                onChanged: (value) {
                                  setState(() {
                                    inspection = value;
                                  });
                                  print(inspection);
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('No'),
                              leading: Radio(
                                value: "no",
                                groupValue: inspection,
                                onChanged: (value) {
                                  setState(() {
                                    inspection = value;
                                  });
                                  print(inspection);
                                },
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Card(
                  child: Container(
                    child: Column(children: [
                      Row(
                        children: [
                          // Button
                          Container(
                            height: 30,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(20))),
                            child: const Center(
                                child: Text(
                              "3",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Text("Helmet status"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              title: CustomTextStyle.regular(text: "No Helmet"),
                              value: "no helmet",
                              groupValue: HelmetStatus,
                              onChanged: (value) {
                                setState(() {
                                  HelmetStatus = value;
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 30,
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              title: CustomTextStyle.regular(
                                  text: "Full Face Helmet"),
                              value: "full face helmet",
                              groupValue: HelmetStatus,
                              onChanged: (value) {
                                setState(() {
                                  HelmetStatus = value;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  child: Container(
                    child: Column(children: [
                      Row(
                        children: [
                          // Button
                          Container(
                            height: 30,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(20))),
                            child: const Center(
                                child: Text(
                              "4",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Text("Reflactive Jacket Status"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Yes'),
                              leading: Radio(
                                value: "yes",
                                groupValue: JacketStatus,
                                onChanged: (value) {
                                  setState(() {
                                    JacketStatus = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('No'),
                              leading: Radio(
                                value: "no",
                                groupValue: JacketStatus,
                                onChanged: (value) {
                                  setState(() {
                                    JacketStatus = value;
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  child: Container(
                    child: Column(children: [
                      Row(
                        children: [
                          // Button
                          Container(
                            height: 30,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(20))),
                            child: const Center(
                                child: Text(
                              "5",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Text(
                                "I will not accept my unofficial pillion rider while on my duety"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Yes'),
                              leading: Radio(
                                value: "yes",
                                groupValue: unofficialrider,
                                onChanged: (value) {
                                  setState(() {
                                    unofficialrider = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('No'),
                              leading: Radio(
                                value: "no",
                                groupValue: unofficialrider,
                                onChanged: (value) {
                                  setState(() {
                                    unofficialrider = value;
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
