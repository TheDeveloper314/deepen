import 'package:deepen/database/app_database.dart';
import 'package:deepen/models/category_model.dart';
import 'package:deepen/providers/local_database_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalDatabaseEngine {
  final AppDatabase appDatabase;

  LocalDatabaseEngine({required this.appDatabase});

  // Categories operations
  Future<List<Category>> getAllCategories() async {
    final categories = await appDatabase.select(appDatabase.categories).get();
    return categories;
  }

  // Question packs operations
  Future<List<QuestionPack>> getPackByCategoryId(String categoryId) async {
    final packsByCategoryIdQuery = appDatabase.select(appDatabase.questionPacks)
      ..where((pack) => pack.categoryId.equals(categoryId));
    final packs = await packsByCategoryIdQuery.get();
    return packs;
  }
}

final localDatabaseEngineProvider = Provider<LocalDatabaseEngine>((ref) {
  final AppDatabase appDatabase = ref.watch(localDatabaseProvider);
  return LocalDatabaseEngine(appDatabase: appDatabase);
});
