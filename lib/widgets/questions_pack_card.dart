import 'package:deepen/models/questions_pack.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants.dart';
import '../screens/questions_screen.dart';

class QuestionsPackCard extends ConsumerWidget {
  final QuestionsPack questionsPack;
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => QuestionsScreen(questionsPack: questionsPack),
            ),
          );
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
                  "assets/images/${questionsPack.packImage}.png",
                  errorBuilder: (context, obj, s) {
                    return Text("Error");
                  },
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                questionsPack.packName[language] ?? "Unnamed",
                style: kQuestionsPackCardTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
