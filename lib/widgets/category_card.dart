import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/language_provider.dart';
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
            category.categoryName != "" ? category.categoryName : "Unnamed",
            style: kBoldSubtitleTextStyleWithMainColor,
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
