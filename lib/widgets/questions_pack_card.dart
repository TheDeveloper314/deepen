import 'package:deepen/database/app_database.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../screens/questions_screen.dart';

class QuestionsPackCard extends ConsumerWidget {
  final QuestionPack questionsPack;
  final double cardWidth;

  const QuestionsPackCard({
    super.key,
    required this.questionsPack,
    this.cardWidth = 150,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final String language = ref.read(languageProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder:
          //         (context) => QuestionsScreen(questionsPack: questionsPack),
          //   ),
          // );
        },
        child: SizedBox(
          width: cardWidth,
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                width: cardWidth,
                height: cardWidth,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.primary,
                ),
                child: Image.asset(
                  "assets/images/${questionsPack.imageUrl}.webp",
                  errorBuilder: (context, obj, s) {
                    return Text("Error");
                  },
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                questionsPack.packTitle != ""
                    ? questionsPack.packTitle
                    : "Unnamed",
                style: kBoldSubtitleTextStyleWithMainColor,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
