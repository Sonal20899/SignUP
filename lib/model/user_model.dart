import 'package:moor_flutter/moor_flutter.dart';

class UserModel extends Table {
  TextColumn get Name => text()();
  TextColumn get Username => text()();
  TextColumn get Password => text()();
  TextColumn get id => text()();
  Set<Column> get primaryKey => {id};
}
