import 'package:deepen/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../widgets/categories_list.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/popular_packs.dart';
import '../widgets/todays_reflection_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        child: SingleChildScrollView(
          child: Column(
            spacing: kMediumSpacing,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "Deepen: Stronger Bonds",
                showLogo: true,
                showLanguageButton: true,
              ),
              Column(
                spacing: kMediumSpacing,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TodaysReflectionCard(),
                  CategoriesList(),
                  PopularPacks(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
