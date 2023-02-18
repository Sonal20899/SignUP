// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_helpers.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DBTask extends DataClass implements Insertable<DBTask> {
  final String Title;
  final String Description;
  final String type;
  final String id;
  DBTask(
      {required this.Title,
      required this.Description,
      required this.type,
      required this.id});
  factory DBTask.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DBTask(
      Title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      Description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['title'] = Variable<String>(Title);
    map['description'] = Variable<String>(Description);
    map['type'] = Variable<String>(type);
    map['id'] = Variable<String>(id);
    return map;
  }

  DBTasksCompanion toCompanion(bool nullToAbsent) {
    return DBTasksCompanion(
      Title: Value(Title),
      Description: Value(Description),
      type: Value(type),
      id: Value(id),
    );
  }

  factory DBTask.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DBTask(
      Title: serializer.fromJson<String>(json['Title']),
      Description: serializer.fromJson<String>(json['Description']),
      type: serializer.fromJson<String>(json['type']),
      id: serializer.fromJson<String>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'Title': serializer.toJson<String>(Title),
      'Description': serializer.toJson<String>(Description),
      'type': serializer.toJson<String>(type),
      'id': serializer.toJson<String>(id),
    };
  }

  DBTask copyWith(
          {String? Title, String? Description, String? type, String? id}) =>
      DBTask(
        Title: Title ?? this.Title,
        Description: Description ?? this.Description,
        type: type ?? this.type,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('DBTask(')
          ..write('Title: $Title, ')
          ..write('Description: $Description, ')
          ..write('type: $type, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(Title, Description, type, id);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DBTask &&
          other.Title == this.Title &&
          other.Description == this.Description &&
          other.type == this.type &&
          other.id == this.id);
}

class DBTasksCompanion extends UpdateCompanion<DBTask> {
  final Value<String> Title;
  final Value<String> Description;
  final Value<String> type;
  final Value<String> id;
  const DBTasksCompanion({
    this.Title = const Value.absent(),
    this.Description = const Value.absent(),
    this.type = const Value.absent(),
    this.id = const Value.absent(),
  });
  DBTasksCompanion.insert({
    required String Title,
    required String Description,
    required String type,
    required String id,
  })  : Title = Value(Title),
        Description = Value(Description),
        type = Value(type),
        id = Value(id);
  static Insertable<DBTask> custom({
    Expression<String>? Title,
    Expression<String>? Description,
    Expression<String>? type,
    Expression<String>? id,
  }) {
    return RawValuesInsertable({
      if (Title != null) 'title': Title,
      if (Description != null) 'description': Description,
      if (type != null) 'type': type,
      if (id != null) 'id': id,
    });
  }

  DBTasksCompanion copyWith(
      {Value<String>? Title,
      Value<String>? Description,
      Value<String>? type,
      Value<String>? id}) {
    return DBTasksCompanion(
      Title: Title ?? this.Title,
      Description: Description ?? this.Description,
      type: type ?? this.type,
      id: id ?? this.id,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (Title.present) {
      map['title'] = Variable<String>(Title.value);
    }
    if (Description.present) {
      map['description'] = Variable<String>(Description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DBTasksCompanion(')
          ..write('Title: $Title, ')
          ..write('Description: $Description, ')
          ..write('type: $type, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $DBTasksTable extends DBTasks with TableInfo<$DBTasksTable, DBTask> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DBTasksTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _TitleMeta = const VerificationMeta('Title');
  @override
  late final GeneratedColumn<String?> Title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _DescriptionMeta =
      const VerificationMeta('Description');
  @override
  late final GeneratedColumn<String?> Description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [Title, Description, type, id];
  @override
  String get aliasedName => _alias ?? 'd_b_tasks';
  @override
  String get actualTableName => 'd_b_tasks';
  @override
  VerificationContext validateIntegrity(Insertable<DBTask> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('title')) {
      context.handle(
          _TitleMeta, Title.isAcceptableOrUnknown(data['title']!, _TitleMeta));
    } else if (isInserting) {
      context.missing(_TitleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _DescriptionMeta,
          Description.isAcceptableOrUnknown(
              data['description']!, _DescriptionMeta));
    } else if (isInserting) {
      context.missing(_DescriptionMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DBTask map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DBTask.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DBTasksTable createAlias(String alias) {
    return $DBTasksTable(attachedDatabase, alias);
  }
}

class DBUserinfo extends DataClass implements Insertable<DBUserinfo> {
  final String name;
  final String email;
  final String id;
  DBUserinfo({required this.name, required this.email, required this.id});
  factory DBUserinfo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DBUserinfo(
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['id'] = Variable<String>(id);
    return map;
  }

  DBUserinfosCompanion toCompanion(bool nullToAbsent) {
    return DBUserinfosCompanion(
      name: Value(name),
      email: Value(email),
      id: Value(id),
    );
  }

  factory DBUserinfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DBUserinfo(
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      id: serializer.fromJson<String>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'id': serializer.toJson<String>(id),
    };
  }

  DBUserinfo copyWith({String? name, String? email, String? id}) => DBUserinfo(
        name: name ?? this.name,
        email: email ?? this.email,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('DBUserinfo(')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, email, id);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DBUserinfo &&
          other.name == this.name &&
          other.email == this.email &&
          other.id == this.id);
}

class DBUserinfosCompanion extends UpdateCompanion<DBUserinfo> {
  final Value<String> name;
  final Value<String> email;
  final Value<String> id;
  const DBUserinfosCompanion({
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.id = const Value.absent(),
  });
  DBUserinfosCompanion.insert({
    required String name,
    required String email,
    required String id,
  })  : name = Value(name),
        email = Value(email),
        id = Value(id);
  static Insertable<DBUserinfo> custom({
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? id,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (id != null) 'id': id,
    });
  }

  DBUserinfosCompanion copyWith(
      {Value<String>? name, Value<String>? email, Value<String>? id}) {
    return DBUserinfosCompanion(
      name: name ?? this.name,
      email: email ?? this.email,
      id: id ?? this.id,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DBUserinfosCompanion(')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $DBUserinfosTable extends DBUserinfos
    with TableInfo<$DBUserinfosTable, DBUserinfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DBUserinfosTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [name, email, id];
  @override
  String get aliasedName => _alias ?? 'd_b_userinfos';
  @override
  String get actualTableName => 'd_b_userinfos';
  @override
  VerificationContext validateIntegrity(Insertable<DBUserinfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DBUserinfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DBUserinfo.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DBUserinfosTable createAlias(String alias) {
    return $DBUserinfosTable(attachedDatabase, alias);
  }
}

class SectionThreeData extends DataClass
    implements Insertable<SectionThreeData> {
  final String company;
  SectionThreeData({required this.company});
  factory SectionThreeData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SectionThreeData(
      company: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['company'] = Variable<String>(company);
    return map;
  }

  SectionThreeCompanion toCompanion(bool nullToAbsent) {
    return SectionThreeCompanion(
      company: Value(company),
    );
  }

  factory SectionThreeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SectionThreeData(
      company: serializer.fromJson<String>(json['company']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'company': serializer.toJson<String>(company),
    };
  }

  SectionThreeData copyWith({String? company}) => SectionThreeData(
        company: company ?? this.company,
      );
  @override
  String toString() {
    return (StringBuffer('SectionThreeData(')
          ..write('company: $company')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => company.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionThreeData && other.company == this.company);
}

class SectionThreeCompanion extends UpdateCompanion<SectionThreeData> {
  final Value<String> company;
  const SectionThreeCompanion({
    this.company = const Value.absent(),
  });
  SectionThreeCompanion.insert({
    required String company,
  }) : company = Value(company);
  static Insertable<SectionThreeData> custom({
    Expression<String>? company,
  }) {
    return RawValuesInsertable({
      if (company != null) 'company': company,
    });
  }

  SectionThreeCompanion copyWith({Value<String>? company}) {
    return SectionThreeCompanion(
      company: company ?? this.company,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (company.present) {
      map['company'] = Variable<String>(company.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionThreeCompanion(')
          ..write('company: $company')
          ..write(')'))
        .toString();
  }
}

class $SectionThreeTable extends SectionThree
    with TableInfo<$SectionThreeTable, SectionThreeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionThreeTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _companyMeta = const VerificationMeta('company');
  @override
  late final GeneratedColumn<String?> company = GeneratedColumn<String?>(
      'company', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [company];
  @override
  String get aliasedName => _alias ?? 'section_three';
  @override
  String get actualTableName => 'section_three';
  @override
  VerificationContext validateIntegrity(Insertable<SectionThreeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    } else if (isInserting) {
      context.missing(_companyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SectionThreeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SectionThreeData.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SectionThreeTable createAlias(String alias) {
    return $SectionThreeTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $DBTasksTable dBTasks = $DBTasksTable(this);
  late final $DBUserinfosTable dBUserinfos = $DBUserinfosTable(this);
  late final $SectionThreeTable sectionThree = $SectionThreeTable(this);
  late final TasksDao tasksDao = TasksDao(this as AppDatabase);
  late final DBUserinfosDoa dBUserinfosDoa =
      DBUserinfosDoa(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [dBTasks, dBUserinfos, sectionThree];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$TasksDaoMixin on DatabaseAccessor<AppDatabase> {
  $DBTasksTable get dBTasks => attachedDatabase.dBTasks;
}
mixin _$DBUserinfosDoaMixin on DatabaseAccessor<AppDatabase> {
  $DBUserinfosTable get dBUserinfos => attachedDatabase.dBUserinfos;
}
mixin _$SectionThreeDataDaoMixin on DatabaseAccessor<AppDatabase> {
  $SectionThreeTable get sectionThree => attachedDatabase.sectionThree;
}
