import 'package:deepen/models/category.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../screens/questions_packs_screen.dart';

class CategoryCard extends ConsumerWidget {
  final Category category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final String language = ref.read(languageProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionsPacksScreen(category: category),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: AppTheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/images/${category.categoryImage}.webp",
                errorBuilder: (context, obj, s) {
                  return Text("");
                },
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              category.categoryName[language] ?? "Unnamed",
              style: kTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
