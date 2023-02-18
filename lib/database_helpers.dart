import 'package:flutter_demo/db_userinfo.dart';
import 'package:flutter_demo/model/section_threedb.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'model/db_task.dart';

part 'database_helpers.g.dart';

/// yaha ham saare table and dao class mention karenge
@UseMoor(
  tables: [DBTasks, DBUserinfos, SectionThree],
  daos: [TasksDao, DBUserinfosDoa, SectionThreeDao],
)
class AppDatabase extends _$AppDatabase {
  static final sharedInstance = AppDatabase();

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

  ///use for insert data into database
  //addTask(DBTask task) =>
  //  into(db.dBTasks).insert(task, mode: InsertMode.replace);

  ///fatch data from database based on its type not in use yet
  Future<List<DBTask>> getTaskByType(String type) =>
      (select(db.dBTasks)..where((task) => task.type.equals(type))).get();

  ///fatch all task
  Future<List<DBTask>> getAllTask() => select(db.dBTasks).get();

  ///update particular task not in use
  updateTask(DBTask task) => update(db.dBTasks).replace(task);

  addTask(DBTask task) {
    into(db.dBTasks).insert(task, mode: InsertMode.replace);
  }
}

@UseDao(tables: [DBUserinfos])
class DBUserinfosDoa extends DatabaseAccessor<AppDatabase> {
  final AppDatabase db;
  DBUserinfosDoa(this.db) : super(db);
}

@UseDao(tables: [SectionThree])
class SectionThreeDao extends DatabaseAccessor<AppDatabase>
    with _$TasksDaoMixin {
  final AppDatabase db;
  SectionThreeDao(this.db) : super(db);

  addTask(SectionThreeData task) {
    into(db.sectionThree).insert(task, mode: InsertMode.replace);
  }
}
