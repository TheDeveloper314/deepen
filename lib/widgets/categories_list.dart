import 'package:deepen/constants.dart';
import 'package:flutter/material.dart';

import '../engines/main_engine.dart';
import '../models/category.dart';
import 'category_card.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final List<Category> categories = mainEngine.getCategories();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: kSmallSpacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories", style: kHeaderTextStyle),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: kMediumSpacing,
            children:
                categories.map((category) {
                  return CategoryCard(category: category);
                }).toList(),
          ),
        ),
      ],
    );
  }
}
