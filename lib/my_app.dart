import 'package:deepen/constants.dart';
import 'package:deepen/providers/initializer_provider.dart';
import 'package:deepen/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initializerAsyncData = ref.watch(initializerProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.gradientDark),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        useMaterial3: true,
      ),
      title: "Deepen",
      home: initializerAsyncData.when(
        data: (_) => HomeScreen(),
        error:
            (e, s) => Scaffold(
              backgroundColor: AppTheme.surface,
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [Text(e.toString()), Text(s.toString())],
                    ),
                  ),
                ),
              ),
            ),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
