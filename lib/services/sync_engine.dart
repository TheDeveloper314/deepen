import 'package:deepen/database/app_database.dart';
import 'package:deepen/services/shared_preferences_engine.dart';
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
