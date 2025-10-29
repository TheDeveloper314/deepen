import 'package:deepen/constants.dart';
import 'package:deepen/widgets/questions_pack_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/main_engine.dart';

class PopularPacks extends ConsumerStatefulWidget {
  const PopularPacks({super.key});

  @override
  ConsumerState<PopularPacks> createState() => _PopularPacksState();
}

class _PopularPacksState extends ConsumerState<PopularPacks> {
  final double cardWidth = 100;

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: kSmallSpacing,
      children: [
        Text("Most Popular Questions Packs", style: kTitleTextStyle),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                mainEngine
                    .getQuestionsPacks(popularPacks)
                    .map(
                      (questionsPack) => QuestionsPackCard(
                        cardWidth: cardWidth,
                        questionsPack: questionsPack,
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}
