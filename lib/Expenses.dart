import 'package:flutter/material.dart';

class Expenses_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
              ),
              padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
              height: 100,
              width: 400,
              child: const Text(
                "Expenses",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Claim Date",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("-- select Date --")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Icon(
                      Icons.calendar_month,
                      size: 50,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20)),
                              color: Colors.blue),
                          child: const Text(
                            "Expenses 3",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Icon(Icons.delete_forever)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Travel Expenses"),
                    const Text("Travel Expenses detail"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("02/01/2023"),
                        const Text(
                          "100₹",
                          style: TextStyle(color: Colors.greenAccent),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ), // first card
            Card(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20)),
                              color: Colors.blue),
                          child: const Text(
                            "Expenses 1",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Icon(Icons.delete_forever)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Travel Expenses"),
                    const Text("Travel Expenses detail"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("02/01/2023"),
                        const Text(
                          "100₹",
                          style: TextStyle(color: Colors.greenAccent),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ), // second card

            Card(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20)),
                              color: Colors.blue),
                          child: const Text(
                            "Expenses 2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Icon(Icons.delete_forever)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Travel Expenses"),
                    const Text("Travel Expenses detail"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("02/01/2023"),
                        const Text(
                          "100₹",
                          style: TextStyle(color: Colors.greenAccent),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 10),
              child: const Text(
                "Add Remarks",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                child: TextField(
                    keyboardType: TextInputType.multiline, maxLines: 2)),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: (() {}),
                  child: Center(
                      child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ))),
            )
          ],
        ), // Main Column
      ),
    );
  }
}
