import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/database_helpers.dart';

class DblistScreen extends StatelessWidget {
  DblistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: FutureBuilder<List<DBTask>>(
            future: fetchAllTask(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    iteamCount:
                    snapshot.data!.length;
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Text(snapshot.data![index].id.toString()),
                            title: Text(snapshot.data![index].Title.toString()),
                            subtitle: Text(
                                snapshot.data![index].Description.toString()),
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

  Future<List<DBTask>> fetchAllTask() async {
    late final _databaseInstance = AppDatabase.sharedInstance;
    List<DBTask> allTask = [];
    try {
      final _tasks = await TasksDao(_databaseInstance).getAllTask();
      // ignore: unnecessary_null_comparison
      if (_tasks != null) {
        allTask.addAll(_tasks);
      }
    } catch (ex) {
      allTask = [];
    }
    return allTask;
  }
}
