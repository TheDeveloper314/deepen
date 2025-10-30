import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/translations_cache_provider.dart';
import 'package:deepen/services/shared_preferences_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../screens/questions_packs_screen.dart';

const double kImageSize = 150;

class CategoryCard extends ConsumerStatefulWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  ConsumerState<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends ConsumerState<CategoryCard> {
  late final Category category;

  // late final int packsCount;
  // late int questionsCount;

  @override
  void initState() {
    category = widget.category;
    // packsCount = category.packs.length;
    // questionsCount = 0;
    // for (QuestionsPack questionsPack in category.packs) {
    //   questionsCount += questionsPack.questions.length;
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sharedPreferencesEngine = ref.watch(
      sharedPreferencesEngineStaticProvider,
    );
    final translationsCacheStateNotifier = ref.watch(
      translationsCacheProvider.notifier,
    );
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuestionsPacksScreen(category: category),
          ),
        );
      },
      child: Column(
        spacing: kSmallestSpacing,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: kImageSize,
            height: kImageSize,
            decoration: BoxDecoration(
              color: AppTheme.primary,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Image.asset(
              "assets/images/${category.imageUrl}.webp",
              errorBuilder: (context, obj, s) {
                return Text("");
              },
              fit: BoxFit.cover,
            ),
          ),
          Text(
            translationsCacheStateNotifier.getTranslation(
                  "category",
                  category.id,
                  "categoryName",
                  sharedPreferencesEngine!.selectedLanguage,
                ) ??
                category.categoryName,
            style: kBoldSubtitleTextStyleWithMainColor,
            // textDirection: TextDirection.rtl
          ),
          // Row(
          //   spacing: kSmallSpacing,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text("$packsCount Packs", style: kSmallSubtitleTextStyle),
          //     Text("$questionsCount Questions", style: kSmallSubtitleTextStyle),
          //   ],
          // ),
        ],
      ),
    );
  }
}
