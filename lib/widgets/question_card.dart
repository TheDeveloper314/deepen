import 'package:deepen/models/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants.dart';
import '../providers/language_provider.dart';

class QuestionCard extends ConsumerWidget {
  final Question question;
  const QuestionCard({super.key, required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String language = ref.read(languageProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          elevation: 3,
          color: AppTheme.surface,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 64.0,
              vertical: 128,
            ),
            child: SizedBox(
              width: double.infinity,
              // height: 300,
              child: Center(
                child: Text(
                  question.questionText[language] ?? "No Question",
                  style: kQuestionCardTitleTextStyle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
