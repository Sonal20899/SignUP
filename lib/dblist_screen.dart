import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_demo/database_helpers.dart';

class DBListScreen extends StatefulWidget {
  const DBListScreen({Key? key}) : super(key: key);
  @override
  State<DBListScreen> createState() => DBListScreenState();
}

class DBListScreenState extends State<DBListScreen> {
  Future<List<DBTask>> fetchAllTask() async {
    late final databaseInstance = AppDatabase.sharedInstance;
    List<DBTask> allTask = [];
    try {
      final _tasks = await TasksDao(databaseInstance).getAllTask();
      if (_tasks != null) {
        allTask.addAll(_tasks);
      }
    } catch (ex) {
      allTask = [];
    }
    print(allTask.length);
    return allTask;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DB Listview Screen "),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: fetchAllTask(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text("loading");
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        //print:DBTasksList.length;
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(snapshot.data![index].Title),
                              subtitle: Text(snapshot.data![index].Description),
                              trailing: Text(snapshot.data![index].type),
                            ),
                          ),
                        );
                      });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
