import 'package:moor_flutter/moor_flutter.dart';

class SectionThree extends Table {
  TextColumn get company => text()();
  TextColumn get policy => text()();
  TextColumn get expiry => text()();
  TextColumn get type => text()();
  TextColumn get color => text()();
  TextColumn get year => text()();
  TextColumn get id => text()();
  Set<Column> get primaryKey => {id};
}
