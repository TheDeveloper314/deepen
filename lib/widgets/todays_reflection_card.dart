import 'package:deepen/constants.dart';
import 'package:deepen/widgets/base_card.dart';
import 'package:flutter/material.dart';

import '../utilities.dart' show formatDate;

class TodaysReflectionCard extends StatelessWidget {
  const TodaysReflectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        spacing: kMediumSpacing,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Today's Reflection", style: kBoldSmallSubtitleTextStyle),
          Text(
            "What is one thing you appreciated about your partner today?",
            style: kBoldSubtitleTextStyleWithMainColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formatDate(DateTime.now(), format: "MMMM dd, yyyy"),
                style: kSmallSubtitleTextStyle,
              ),
              FilledButton(onPressed: () {}, child: Text("Start Reflection")),
            ],
          ),
        ],
      ),
    );
  }
}
