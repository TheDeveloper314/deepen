import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/local_database_provider.dart';
import 'package:drift/drift.dart';
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
  Future<List<QuestionPack>> getQuestionPackByCategoryId(
    String categoryId,
  ) async {
    final questionPacksByCategoryIdQuery = appDatabase.select(
      appDatabase.questionPacks,
    )..where((pack) => pack.categoryId.equals(categoryId));
    final List<QuestionPack> packs = await questionPacksByCategoryIdQuery.get();
    return packs;
  }

  Future<List<QuestionPack>> getMostPopularQuestionPacks({
    int count = 5,
  }) async {
    final questionPacks =
        appDatabase.select(appDatabase.questionPacks)
          ..orderBy([
            (questionPack) => OrderingTerm(
              expression: questionPack.ratingAverage,
              mode: OrderingMode.desc,
            ),
            (questionPack) => OrderingTerm(
              expression: questionPack.ratingCount,
              mode: OrderingMode.desc,
            ),
          ])
          ..limit(count);
    final List<QuestionPack> packs = await questionPacks.get();
    return packs;
  }

  // Questions operations
  Future<List<Question>> getQuestionByQuestionPackId(
    String questionPackId,
  ) async {
    final questionsQuery = appDatabase.select(appDatabase.questions)
      ..where((question) => question.packId.equals(questionPackId));
    final List<Question> questions = await questionsQuery.get();
    return questions;
  }

  // Translations operations
  Future<List<Translation>> getTranslations() async {
    final List<Translation> translations =
        await appDatabase.select(appDatabase.translations).get();
    return translations;
  }
}

final localDatabaseEngineProvider = Provider<LocalDatabaseEngine>((ref) {
  final AppDatabase appDatabase = ref.watch(localDatabaseProvider);
  return LocalDatabaseEngine(appDatabase: appDatabase);
});
