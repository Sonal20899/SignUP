import 'package:flutter/material.dart';

import 'data_access.dart';

class Task_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoadDataInternet()));
          }),
          child: Text("Click")),
    ));
    //print(response.body.toString());
  }
}
