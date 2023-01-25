import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo/model/EMP_Model.dart';
import 'package:flutter_demo/model/emp_model.dart';
import 'package:http/http.dart' as http;

import 'model/user_model.dart';
import 'model/emp_model.dart';

class LoadDataInternet extends StatefulWidget {
  @override
  State<LoadDataInternet> createState() => _LoadDataInternetState();
}

class _LoadDataInternetState extends State<LoadDataInternet> {
  String baseUrl = "https://jsonplaceholder.typicode.com/albums";
  //"https://jsonplaceholder.typicode.com/users";
  var client = http.Client();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (
                  contex,
                  index,
                ) {
                  return Text(snapshot.data![index].title!);
                });
          } else {
            return Container();
          }
        },
      ),
    );
  }

  @override
  void initState() {
    fetchData().then((value) {
      print(value.length);
    });
  }

  Future<List<UserModel>> fetchData() async {
    List<UserModel> data = <UserModel>[];
    http.Response response = await client.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      String responseData = response.body.toString();
      return (jsonDecode(responseData.toString()) as List<dynamic>)
          .map((usermap) => UserModel.fromJson(usermap))
          .toList();
    }
    return data;
  }
}
