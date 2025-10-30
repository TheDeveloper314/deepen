import 'package:deepen/constants.dart';
import 'package:deepen/services/local_database_engine.dart';
import 'package:deepen/widgets/questions_pack_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/app_database.dart' show QuestionPack;

const double kCardWidth = 100;

class PopularPacks extends ConsumerWidget {
  const PopularPacks({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LocalDatabaseEngine localDatabaseEngine = ref.watch(
      localDatabaseEngineProvider,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: kSmallSpacing,
      children: [
        Text("Most Popular Questions Packs", style: kTitleTextStyle),
        FutureBuilder(
          future: localDatabaseEngine.getMostPopularQuestionPacks(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final List<QuestionPack> mostPopularQuestionPacks = snapshot.data;
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      mostPopularQuestionPacks
                          .map(
                            (questionsPack) => QuestionsPackCard(
                              cardWidth: kCardWidth,
                              questionsPack: questionsPack,
                            ),
                          )
                          .toList(),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(
                child: Text("Error loading most popular questions packs"),
              );
            }
          },
        ),
      ],
    );
  }
}
