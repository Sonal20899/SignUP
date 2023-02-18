import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signout_Screen extends StatelessWidget {
  String? gender;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Sign Out"),
      ),
      backgroundColor: Color.fromARGB(255, 178, 213, 229),
      body: Column(children: [
        Container(
          height: 180,
          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
          padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "09:00Hrs",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    height: 30,
                    width: 120,
                    color: Colors.white,
                    // ignore: prefer_const_constructors
                    child: Center(
                      child: const Text(
                        "SIGN _ OUT",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 165),
                child: Text(
                  "Last sign - In at 3:30 AM",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        Container(
          margin: const EdgeInsets.only(left: 155),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.speed,
                color: Colors.red,
              ),
              const Text("Check your vehicle - speed",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 10),
                color: Colors.white,
                height: 230,
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 42),
                          height: 40,
                          width: 180,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20))),
                          child: const Center(
                              child: Text(
                            "Today's Sign in details",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Text(
                          "ATM office id - 448",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: 80,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(
                                        Icons.share_location,
                                        color: Colors.blue,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Transport mode selected",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ))
                                    ],
                                  ),
                                  Text("two Wheeler")
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 80,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Icon(Icons.share_location,
                                        color: Colors.blue),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                        child: Text(
                                      "Location",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ))
                                  ],
                                ),
                                Text("12.22222222"),
                                Text("12.22222222")
                              ],
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_sharp,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        "Date",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Text("01/01/2023"),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceEvenly,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Icon(
                                      Icons.share_location,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text("09:30:00 AM"),
                              ],
                            ),
                          ),
                        ])
                  ],
                ),
              ), // First Container
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 10),
                color: Colors.white,
                height: 230,
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 180,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20))),
                          child: const Center(
                              child: Text(
                            "Current transport mode",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: 80,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Transport mode selected",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.swipe_rounded,
                                        color: Colors.blue,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("two Wheeler"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Icon(
                                      Icons.share_location,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text("Location"),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Icon(
                                      Icons.punch_clock,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text("Location"),
                              ],
                            ),
                          ),
                        ])
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 10),
                color: Colors.white,
                height: 230,
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 300,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20))),
                          child: Expanded(
                            child: Center(
                              child: Text(
                                "Today's transport mode current history",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Transport mode selected",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.swipe_rounded,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 60,
                                      ),
                                      Text("12.2222223872, 13.154854"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Icon(
                                      Icons.calendar_month,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text("1/12/2023"),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Icon(
                                      Icons.punch_clock,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text("12:33:33 PM"),
                              ],
                            ),
                          ),
                        ])
                  ],
                ),
              ),

              Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  padding: EdgeInsets.only(left: 80),
                  color: Colors.blue,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.swipe_outlined),
                      const SizedBox(
                        width: 10,
                      ),
                      // ignore: prefer_const_constructors
                      Center(
                        child: const Text(
                          "Switch transport mode",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ))
            ]),
          ),
        )
      ]),
    ));
  }
}
