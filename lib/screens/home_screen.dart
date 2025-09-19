import 'package:deepen/models/category.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants.dart';
import '../widgets/category_card.dart';
import '../widgets/questions_pack_card.dart';
import '../engines/main_engine.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late String language;
  final List<String> popularPacks = [
    "Fun & Laughter",
    "First Dates",
    "Deep Conversation",
    "Childhood Memories",
    "Getting Serious",
    "Anniversaries & Special Moments",
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    language = ref.watch(languageProvider);
    final List<Category> categories = mainEngine.getCategories();
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: Center(child: Text("Deepen")),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (language == "en") {
                  ref.read(languageProvider.notifier).state = "ar";
                } else {
                  ref.read(languageProvider.notifier).state = "en";
                }
              });
            },
            icon: Icon(Icons.language),
          ),
        ],
        backgroundColor: AppTheme.background,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Categories", style: kTitleTextStyle),
                SizedBox(height: height * kSizedBoxHeightFactor),
                Center(
                  child: Wrap(
                    children:
                        categories.map((category) {
                          return CategoryCard(category: category);
                        }).toList(),
                  ),
                ),
                SizedBox(height: height * kSizedBoxHeightFactor),
                Text("Most Popular Questions Packs", style: kTitleTextStyle),
                SizedBox(height: height * kSizedBoxHeightFactor),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        mainEngine
                            .getQuestionsPacks(popularPacks)
                            .map(
                              (questionsPack) => QuestionsPackCard(
                                cardWidth: 100,
                                questionsPack: questionsPack,
                              ),
                            )
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
