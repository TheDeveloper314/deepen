import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/local_database_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalDatabaseEngine {
  final AppDatabase appDatabase;

  LocalDatabaseEngine({required this.appDatabase});
}

final localDatabaseEngineProvider = Provider<LocalDatabaseEngine>((ref) {
  final AppDatabase appDatabase = ref.watch(localDatabaseProvider);
  return LocalDatabaseEngine(appDatabase: appDatabase);
});
