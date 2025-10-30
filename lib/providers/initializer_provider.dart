import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/translations_cache_provider.dart';
import 'package:deepen/services/local_database_engine.dart';
import 'package:deepen/services/shared_preferences_engine.dart';
import 'package:deepen/services/sync_engine.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initializerProvider = FutureProvider<void>((ref) async {
  // initialize sharedPreferencesEngine
  // await ref.watch(sharedPreferencesEngineProvider.future);

  // watch for supabase auth change events

  // initialize syncEngine
  final SyncEngine syncEngine = await ref.watch(syncEngineProvider.future);

  // perform startup sync here
  await syncEngine.syncAll();

  // load translations
  final LocalDatabaseEngine localDatabaseEngine = ref.watch(
    localDatabaseEngineProvider,
  );
  final List<Translation> translations =
      await localDatabaseEngine.getTranslations();
  ref.read(translationsCacheProvider.notifier).load(translations);
});
