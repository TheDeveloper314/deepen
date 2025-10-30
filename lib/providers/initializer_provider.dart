import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/local_database_provider.dart';
import 'package:deepen/services/shared_preferences_engine.dart';
import 'package:deepen/services/sync_engine.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initializerProvider = FutureProvider<void>((ref) async {
  // initialize sharedPreferencesEngine
  await ref.watch(sharedPreferencesEngineProvider.future);

  // watch for supabase auth change events

  // initialize syncEngine
  await ref.watch(syncEngineProvider.future);

  // perform startup sync here
});
