import 'package:deepen/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../database/app_database.dart' show Question;

class QuestionCard extends ConsumerStatefulWidget {
  final Question question;

  const QuestionCard({super.key, required this.question});

  @override
  ConsumerState<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends ConsumerState<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: kLargeSpacing,
      children: [
        Text(
          textAlign: TextAlign.center,
          widget.question.questionText ?? "No Question",
          style: kLargeTitleTextStyleAmiri,
        ),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SizedBox(
              width: constraints.maxWidth * 0.7,
              child: Row(
                spacing: kSmallSpacing,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(iconData: CupertinoIcons.heart),
                  CustomIconButton(iconData: Icons.skip_next_outlined),
                ],
              ),
            );
          },
        ),
        // Column(
        //   spacing: kSmallSpacing,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text("Your reflection", style: kSmallSubtitleTextStyle),
        //     BaseCard(
        //       child: Column(
        //         children: [
        //           TextFormField(),
        //           Align(
        //             alignment: Alignment.centerRight,
        //             child: IconButton(
        //               onPressed: () {},
        //               icon: Icon(
        //                 Icons.send,
        //                 color: AppTheme.gradientDark,
        //                 size: 20,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
