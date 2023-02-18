import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_text_style.dart';

class SectionFour_Screen extends StatefulWidget {
  SectionFour_Screen({super.key});

  @override
  State<SectionFour_Screen> createState() => _SectionFour_ScreenState();
}

class _SectionFour_ScreenState extends State<SectionFour_Screen> {
  List<String> section4 = [
    "Frame - Visual check for damage and/or objects that would interfere with safe vehicle operation.",
    "Horn - Present. Operational (Audible/Loud)",
    "Mirrors (2) - One mounted on left and right side of handlebars or on sides (L/R) of windshield",
    "Kick, Main &amp; Side Stands - Available, Springs is in place w/tension to hold in place when in folded position",
    "Lights - a. Headlight (MultiBeam), Present/Operational?",
    "Lights - b. Tail Light - Minimum one fully operational tail light",
    "Lights - c. Brake Light - Minimum one fully operational light",
    "Lights - d. Turn Signals - If manufactured prior to 01/80=NA. After 01/80 turn signals required.",
    "Lights - e. Reflectors - Minimum one red reflector. May be separate or part of tail light assembly",
    "Oil/hydraulic fluids - Check engine, wheels and on ground for obvious signs of leakage.",
    "Brakes - Present. Front &amp; Rear operational",
    "Wheels - Check Rims for cracks, dents or rust and proper fittings",
    "Tyres - Proper Tyre pressure (PSI)",
    "Check for dry rot, tyre damage and excessive uneven wear and tear",
    "Passenger sitting - fixed seat w/passenger footrest and hand-grips.",
    "Fenders/Mud guards - Fixed aligned and no visible physical damage",
    "Cables - Check the brake, clutch and throttle cables for kinks or broken strands.",
    "Muffler/Exhaust system - Present, Operational? No excessive noise / open exhaust pipe",
    "Indicator / Buzzer / Horn available or not."
  ];
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Section 4"),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: ListView.builder(
              itemCount: section4.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            CustomTextStyle.bold(
                                text: " ${section4[index]}", fontSize: 16)
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Radio(
                                value: "radio value",
                                groupValue: "group value",
                                onChanged: (value) {
                                  print(value); //selected value
                                }),
                            Radio(
                                value: "radio value",
                                groupValue: "group value",
                                onChanged: (value) {
                                  print(value); //selected value
                                }),
                            Radio(
                                value: "radio value",
                                groupValue: "group value",
                                onChanged: (value) {
                                  print(value); //selected value
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )));
  }
}
