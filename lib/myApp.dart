import 'package:deepen/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Deepen",
      home: HomeScreen(),
    );
  }
}
