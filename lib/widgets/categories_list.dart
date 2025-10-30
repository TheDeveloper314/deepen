import 'package:deepen/constants.dart';
import 'package:deepen/database/app_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/local_database_engine.dart';
import 'category_card.dart';

class CategoriesList extends ConsumerStatefulWidget {
  const CategoriesList({super.key});

  @override
  ConsumerState<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends ConsumerState<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    final LocalDatabaseEngine localDatabaseEngine = ref.watch(
      localDatabaseEngineProvider,
    );
    return Column(
      spacing: kSmallSpacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories", style: kHeaderTextStyle),
        FutureBuilder(
          future: localDatabaseEngine.getAllCategories(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final List<Category> categories = snapshot.data;
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: kMediumSpacing,
                  children:
                      categories.map((category) {
                        return CategoryCard(category: category);
                      }).toList(),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: Text("Error loading categories"));
            }
          },
        ),
      ],
    );
  }
}
