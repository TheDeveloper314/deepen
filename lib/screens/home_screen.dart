import 'package:deepen/models/category.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../engines/main_engine.dart';
import '../widgets/category_card.dart';
import '../widgets/questions_pack_card.dart';

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
    language = ref.watch(languageProvider);
    final List<Category> categories = mainEngine.getCategories();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [AppTheme.gradientDark, AppTheme.gradientLight],
        ),
      ),
      child: Scaffold(
        // appBar: AppBar(
        //   surfaceTintColor: Colors.transparent,
        //   title: Center(child: Text("Deepen")),
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         setState(() {
        //           if (language == "en") {
        //             ref.read(languageProvider.notifier).state = "ar";
        //           } else {
        //             ref.read(languageProvider.notifier).state = "en";
        //           }
        //         });
        //       },
        //       icon: Icon(Icons.language),
        //     ),
        //   ],
        //   backgroundColor: AppTheme.background,
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                spacing: kLargeSpacing,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: kSmallSpacing,
                        children: [
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset("assets/icons/icon.png"),
                          ),
                          Text(
                            "Deepen: Stronger Bonds",
                            style: kBoldTextStyle.copyWith(
                              fontSize: kSubtitleFontSize,
                            ),
                          ),
                        ],
                      ),
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
                  ),
                  Column(
                    spacing: kSmallSpacing,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Categories", style: kTitleTextStyle),
                      Center(
                        child: Wrap(
                          children:
                              categories.map((category) {
                                return CategoryCard(category: category);
                              }).toList(),
                        ),
                      ),
                      Text(
                        "Most Popular Questions Packs",
                        style: kTitleTextStyle,
                      ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
