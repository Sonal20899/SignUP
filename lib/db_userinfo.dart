import 'package:moor_flutter/moor_flutter.dart';

class DBUserinfos extends Table {
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get id => text()();
  Set<Column> get primaryKey => {id};
}
