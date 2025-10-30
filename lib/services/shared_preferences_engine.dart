import 'package:deepen/providers/shared_preferences_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesEngine {
  final SharedPreferences sharedPreferences;
  static const String _selectedLanguageKey = "selectedLanguage";
  static const String _lastSyncDateKey = "lastSyncDate";
  static const String _isFirstLaunchKey = "isFirstLaunch";

  SharedPreferencesEngine({required this.sharedPreferences});

  // App Language
  String get selectedLanguage =>
      sharedPreferences.getString(_selectedLanguageKey) ?? "en";

  Future<void> setSelectedLanguage(String languageCode) async {
    sharedPreferences.setString(_selectedLanguageKey, languageCode);
    print(this.selectedLanguage);
  }

  // Last Sync
  DateTime? get lastSyncDate {
    final String? lastSyncDateAsString = sharedPreferences.getString(
      _lastSyncDateKey,
    );
    return lastSyncDateAsString != null
        ? DateTime.parse(lastSyncDateAsString)
        : null;
  }

  Future<void> setLastSyncDate(DateTime lastSyncDate) async => sharedPreferences
      .setString(_lastSyncDateKey, lastSyncDate.toIso8601String());

  // Welcome screens
  bool get isFirstLaunch =>
      sharedPreferences.getBool(_isFirstLaunchKey) ?? true;

  Future<void> setIsFirstLaunch(bool isFirstLaunch) async =>
      sharedPreferences.setBool(_isFirstLaunchKey, isFirstLaunch);
}

final sharedPreferencesEngineProvider = FutureProvider<SharedPreferencesEngine>(
  (ref) async {
    final SharedPreferences sharedPreferences = await ref.watch(
      sharedPreferencesProvider.future,
    );
    return SharedPreferencesEngine(sharedPreferences: sharedPreferences);
  },
);

final sharedPreferencesEngineStaticProvider =
    Provider<SharedPreferencesEngine?>((ref) => null);
