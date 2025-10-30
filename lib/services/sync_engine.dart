import 'package:deepen/database/app_database.dart';
import 'package:deepen/models/category_model.dart';
import 'package:deepen/models/question_model.dart';
import 'package:deepen/models/question_pack_model.dart';
import 'package:deepen/models/translation_model.dart';
import 'package:deepen/providers/local_database_provider.dart';
import 'package:deepen/providers/supabase_client_provider.dart';
import 'package:deepen/services/shared_preferences_engine.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SyncEngine {
  final AppDatabase appDatabase;
  final SupabaseClient client;
  final SharedPreferencesEngine sharedPreferencesEngine;

  SyncEngine({
    required this.appDatabase,
    required this.client,
    required this.sharedPreferencesEngine,
  });

  Future<void> syncAll() async {
    final DateTime? lastSyncDate = sharedPreferencesEngine.lastSyncDate;

    // get categories to sync
    final List<Map<String, dynamic>> categoriesJsons = await _getSupabaseData(
      "tblCategories",
      lastSyncDate,
    );
    final List<CategoryModel> categoriesToSync =
        categoriesJsons
            .map((categoryJson) => CategoryModel.fromJson(categoryJson))
            .toList();

    // get question packs to sync
    final List<Map<String, dynamic>> questionPacksJsons =
        await _getSupabaseData("tblQuestionPacks", lastSyncDate);
    final List<QuestionPackModel> questionPacksToSync =
        questionPacksJsons
            .map(
              (questionPackJson) =>
                  QuestionPackModel.fromJson(questionPackJson),
            )
            .toList();

    // get questions to sync
    final List<Map<String, dynamic>> questionsJsons = await _getSupabaseData(
      "tblQuestions",
      lastSyncDate,
    );
    final List<QuestionModel> questionsToSync =
        questionsJsons
            .map((questionJson) => QuestionModel.fromJson(questionJson))
            .toList();

    // get translations to sync
    final List<Map<String, dynamic>> translationsJsons = await _getSupabaseData(
      "tblTranslations",
      lastSyncDate,
    );
    final List<TranslationModel> translationsToSync =
        translationsJsons
            .map(
              (translationJson) => TranslationModel.fromJson(translationJson),
            )
            .toList();

    await appDatabase.batch((batch) {
      // sync Categories
      batch.insertAllOnConflictUpdate(
        appDatabase.categories,
        categoriesToSync.map((categoryModel) {
          return CategoriesCompanion.insert(
            id: categoryModel.id,
            categoryName: categoryModel.categoryName,
            imageUrl: categoryModel.imageUrl,
            slug: categoryModel.slug,
            sortOrder: categoryModel.sortOrder,
            isActive: categoryModel.isActive,
            createdAt: categoryModel.createdAt,
            modifiedAt: categoryModel.modifiedAt,
          );
        }).toList(),
      );

      // // sync QuestionPacks
      batch.insertAllOnConflictUpdate(
        appDatabase.questionPacks,
        questionPacksToSync.map((questionPackModel) {
          return QuestionPacksCompanion.insert(
            id: questionPackModel.id,
            categoryId: questionPackModel.categoryId,
            packTitle: questionPackModel.packTitle,
            packDescription: questionPackModel.packDescription,
            imageUrl: questionPackModel.imageUrl,
            languageCode: questionPackModel.languageCode,
            isActive: questionPackModel.isActive,
            slug: questionPackModel.slug,
            packVersion: questionPackModel.packVersion,
            visibility: questionPackModel.visibility,
            ratingCount: questionPackModel.ratingCount,
            ratingAverage: questionPackModel.ratingAverage,
            createdAt: questionPackModel.createdAt,
            modifiedAt: questionPackModel.modifiedAt,
          );
        }).toList(),
      );

      // Questions sync
      batch.insertAllOnConflictUpdate(
        appDatabase.questions,
        questionsToSync.map((questionModel) {
          return QuestionsCompanion.insert(
            id: questionModel.id,
            packId: questionModel.packId,
            questionText: questionModel.questionText,
            questionType: questionModel.questionType,
            orderIndex: questionModel.orderIndex,
            isActive: questionModel.isActive,
            createdAt: questionModel.createdAt,
            modifiedAt: questionModel.modifiedAt,
          );
        }).toList(),
      );

      // Translations sync
      batch.insertAllOnConflictUpdate(
        appDatabase.translations,
        translationsToSync.map((translationModel) {
          return TranslationsCompanion.insert(
            id: translationModel.id,
            entityType: translationModel.entityType,
            entityId: translationModel.entityId,
            fieldName: translationModel.fieldName,
            languageCode: translationModel.languageCode,
            translationText: translationModel.translationText,
            isVerified: translationModel.isVerified,
            createdAt: translationModel.createdAt,
            modifiedAt: translationModel.modifiedAt,
          );
        }).toList(),
      );
    });
    await sharedPreferencesEngine.setLastSyncDate(DateTime.now());
  }

  Future<List<Map<String, dynamic>>> _getSupabaseData(
    String tableName,
    DateTime? lastSyncDate,
  ) async {
    final query = client.from(tableName).select();
    if (lastSyncDate != null) {
      query.gte("modifiedAt", lastSyncDate.toIso8601String());
    }
    final data = await query;
    return data;
  }
}

final syncEngineProvider = FutureProvider<SyncEngine>((ref) async {
  final AppDatabase appDatabase = ref.watch(localDatabaseProvider);
  final SupabaseClient client = ref.watch(supabaseClientProvider);
  final SharedPreferencesEngine sharedPreferencesEngine = await ref.watch(
    sharedPreferencesEngineProvider.future,
  );
  return SyncEngine(
    appDatabase: appDatabase,
    client: client,
    sharedPreferencesEngine: sharedPreferencesEngine,
  );
});
