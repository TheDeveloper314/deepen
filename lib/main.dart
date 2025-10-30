import 'package:deepen/services/shared_preferences_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'my_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "dev.env");
  await Supabase.initialize(
    url: dotenv.env["SUPABASE_URL"]!,
    anonKey: dotenv.env["SUPABASE_ANON_KEY"]!,
  );
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final sharedPreferencesEngine = SharedPreferencesEngine(
    sharedPreferences: sharedPreferences,
  );

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesEngineStaticProvider.overrideWithValue(
          sharedPreferencesEngine,
        ),
      ],
      child: const MyApp(),
    ),
  );
}
