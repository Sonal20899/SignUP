import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'model/Album.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String baseUrl = "https://jsonplaceholder.typicode.com/albums";
  //"https://jsonplaceholder.typicode.com/users";
  var client = http.Client();
  late Future<Album> futureAlbum;
  late Future<List<Album>> AllAlbum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: FutureBuilder<List<Album>>(
            future: fetchAllAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    //iteamCount:snapshot.data!.length;
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Text(snapshot.data![index].id.toString()),
                            title: Text(snapshot.data![index].title.toString()),
                            subtitle:
                                Text(snapshot.data![index].userId.toString()),
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }

  // Future<Album> fetchAlbum() async {
  //   final response = await http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     var jsondata = jsonDecode(response.body);
  //     Album data = Album.fromJson(jsondata);
  //     return data;
  //     //return Album.fromJson(jsondata);
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }

  @override
  void initState() {
    super.initState();
    //futureAlbum = fetchAlbum();
    AllAlbum = fetchAllAlbum();
    fetchAllAlbum().then((value) {
      print(value.length);
    });
  }

  Future<List<Album>> fetchAllAlbum() async {
    List<Album> data = <Album>[];
    http.Response response = await client.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      String responseData = response.body.toString();
      return (jsonDecode(responseData) as List<dynamic>)
          .map((usermap) => Album.fromJson(usermap))
          .toList();
    }

    return data;
  }
}
