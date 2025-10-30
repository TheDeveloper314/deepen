import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/local_database_provider.dart';
import 'package:deepen/providers/shared_preferences_provider.dart';
import 'package:deepen/providers/supabase_client_provider.dart';
import 'package:deepen/services/shared_preferences_engine.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
