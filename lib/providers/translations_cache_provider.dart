import 'package:deepen/database/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TranslationCacheNotifier extends StateNotifier<Map<String, String>> {
  TranslationCacheNotifier() : super({});

  void load(List<Translation> translations) {
    final Map<String, String> cache = {};
    for (Translation translation in translations) {
      final String key =
          "${translation.entityType}_${translation.entityId}_${translation.fieldName}_${translation.languageCode}";
      cache[key] = translation.translationText;
    }
    state = cache;
  }

  String? getTranslation(
    String entityType,
    String entityId,
    String fieldName,
    String languageCode,
  ) {
    return state["${entityType}_${entityId}_${fieldName}_${languageCode}"];
  }
}

final translationsCacheProvider =
    StateNotifierProvider<TranslationCacheNotifier, Map<String, String>>(
      (ref) => TranslationCacheNotifier(),
    );
