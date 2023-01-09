import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadDataInternet extends StatefulWidget {
  @override
  State<LoadDataInternet> createState() => _LoadDataInternetState();
}

class _LoadDataInternetState extends State<LoadDataInternet> {
  String baseUrl = "https://jsonplaceholder.typicode.com/users";
  var client = http.Client();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  @override
  void initState() {
    fetchData();
  }

  Future<void> fetchData() async {
    http.Response response = await client.get(Uri.parse(baseUrl));
    print(response.statusCode);

    //print(response.body.toString());
  }
}
