import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Design_Screen extends StatelessWidget {
  const Design_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact us"),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  )),
                ),
                height: 60,
                width: 250,
                // ignore: prefer_const_constructors
                child: Center(
                  child: const Text(
                    "ABC",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              getcard("Website", Icons.wallet_membership_outlined),
              getcard("Pone number", Icons.phone),
              getcard("Emial", Icons.email),
              getcard("Twitter", Icons.phone),
              getcard("Facebook", Icons.facebook),
              getcard("Instagram", Icons.phone),
              getcard("Github", Icons.phone),
            ],
          ),
        ));
  }

  getcard(String text, IconData img) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 60,
        width: 320,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(img),
            const SizedBox(
              width: 30,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
