import 'package:deepen/database/app_database.dart';
import 'package:riverpod/riverpod.dart';

final localDatabaseProvider = Provider<AppDatabase>((ref) {
  final AppDatabase appDatabase = AppDatabase();
  ref.onDispose(() => appDatabase.close());
  return appDatabase;
});
