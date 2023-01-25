import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_demo/model/emp_model.dart';

class JsonScreen extends StatefulWidget {
  @override
  State<JsonScreen> createState() => _JsonScreenState();
}

class _JsonScreenState extends State<JsonScreen> {
  EmpModel usermodel = EmpModel(
      id: "1",
      fullname: "soni bind",
      email: "bindsoni1998@gmail,com",
      address: "virar");
  String userJson =
      '{"id":"1","fullname":"soni bind","email":"bindsoni1998@gmail,com","address":"virar"}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Map<String, dynamic> usermap = usermodel.toMap();
                  String json = jsonEncode(usermap);
                  print("object :::::: ${usermodel}");
                  print("object to map ::::::${usermap}");
                  print("map to json :::::${json}");
                },
                child: Text("SerialLization")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  var userdata = jsonDecode(userJson);
                  Map<String, dynamic> usermap = userdata;
                  EmpModel usermodel = EmpModel.fromMap(usermap);

                  print("json to map  :::::: ${userdata}");
                  print("map value::::::${userdata}");
                  print("map to object :::::${usermodel.fullname.toString()}");
                  print("map to object :::::${usermodel.address.toString()}");
                },
                child: const Text("De - SerialLization"))
          ],
        ),
      ),
    );
  }
}
