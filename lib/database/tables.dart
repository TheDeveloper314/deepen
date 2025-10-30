import 'package:drift/drift.dart';

import '../utilities.dart' show StringListConverter;

class Categories extends Table {
  TextColumn get id => text()();

  TextColumn get categoryName => text()();

  TextColumn get imageUrl => text()();

  TextColumn get slug => text()();

  IntColumn get sortOrder => integer()();

  BoolColumn get isActive => boolean()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  TextColumn get syncStatus => text().withDefault(const Constant("synced"))();

  @override
  Set<Column> get primaryKey => {id};
}

class QuestionPacks extends Table {
  TextColumn get id => text()();

  TextColumn get categoryId => text()();

  TextColumn get packTitle => text()();

  TextColumn get packDescription => text()();

  TextColumn get imageUrl => text()();

  TextColumn get languageCode => text()();

  TextColumn get tags => text().map(const StringListConverter()).nullable()();

  BoolColumn get isActive => boolean()();

  TextColumn get createdById => text().nullable()();

  TextColumn get slug => text()();

  IntColumn get packVersion => integer()();

  TextColumn get visibility => text()();

  IntColumn get ratingCount => integer()();

  RealColumn get ratingAverage => real()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  TextColumn get syncStatus => text().withDefault(const Constant("synced"))();

  @override
  Set<Column> get primaryKey => {id};
}

class Questions extends Table {
  TextColumn get id => text()();

  TextColumn get packId => text()();

  TextColumn get questionText => text()();

  TextColumn get questionType => text()();

  IntColumn get orderIndex => integer()();

  TextColumn get tags => text().map(const StringListConverter()).nullable()();

  BoolColumn get isActive => boolean()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  TextColumn get syncStatus => text().withDefault(const Constant("synced"))();

  @override
  Set<Column> get primaryKey => {id};
}

class Translations extends Table {
  TextColumn get id => text()();

  TextColumn get entityType => text()();

  TextColumn get entityId => text()();

  TextColumn get fieldName => text()();

  TextColumn get languageCode => text()();

  TextColumn get translationText => text()();

  BoolColumn get isVerified => boolean()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  TextColumn get syncStatus => text().withDefault(const Constant("synced"))();

  @override
  Set<Column> get primaryKey => {id};
}
