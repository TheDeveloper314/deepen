import 'dart:io';

import 'package:deepen/database/tables.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../utilities.dart' show StringListConverter;

part 'app_database.g.dart';

@DriftDatabase(tables: [Categories, QuestionPacks, Questions, Translations])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  // Bump this when you change table structure
  @override
  int get schemaVersion => 2;

  // Migration strategy, if you need to run upgrades, add logic here
  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // you define the steps to migrate (addition, deletion, etc) in each version schema change.
      // similar to makemigrations in django
      // Example: if (from == 1){await m.addColumn(questionPacks, questionPacks.description);}
      if (from == 1) {
        // add columns
        await m.addColumn(categories, categories.syncStatus);
        await m.addColumn(questionPacks, questionPacks.syncStatus);
        await m.addColumn(questions, questions.syncStatus);
        await m.addColumn(translations, translations.syncStatus);

        // initialize columns so they are not null
        await customStatement('UPDATE categories SET sync_status = "synced"');
        await customStatement(
          'UPDATE question_packs SET synced_status = "synced"',
        );
        await customStatement('UPDATE questions SET sync_status "synced"');
        await customStatement('UPDATE translations SET sync_status "synced"');
      }
    },
    beforeOpen: (details) async {
      // called whenever DB opens
      // if (details.wasCreated) {
      //   print("Database was created successfully");
      // } else if (details.hadUpgrade) {
      //   print(
      //     "Upgraded from ${details.versionBefore} to ${details.versionNow}",
      //   );
      // }
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, "app.db"));
    return NativeDatabase(file);
  });
}
