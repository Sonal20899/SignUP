import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/db_userinfo.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'model/db_task.dart';

part 'database_helpers.g.dart';

/// yaha ham saare table and dao class mention karenge
@UseMoor(
  tables: [DBTasks, DBUserinfos],
  daos: [TasksDao, DBUserinfosDoa],
)
class AppDatabase extends _$AppDatabase {
  static final sharedInstance = AppDatabase();
  final _databaseInstance = AppDatabase.sharedInstance;

  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: false));

  @override
  int get schemaVersion => 1;
}

@UseDao(tables: [DBTasks])
class TasksDao extends DatabaseAccessor<AppDatabase> with _$TasksDaoMixin {
  final AppDatabase db;
  TasksDao(this.db) : super(db);
  addTask(DBTask task) =>
      into(db.dBTasks).insert(task, mode: InsertMode.replace);

  Future<List<DBTask>> getAllTask() => select(db.dBTasks).get();
}

@UseDao(tables: [DBUserinfos])
class DBUserinfosDoa extends DatabaseAccessor<AppDatabase> {
  final AppDatabase db;
  DBUserinfosDoa(this.db) : super(db);
}
