import 'package:deepen/models/questions_pack.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:deepen/screens/base_screen.dart';
import 'package:deepen/widgets/question_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/question.dart';
import '../widgets/custom_app_bar.dart';

class QuestionsScreen extends ConsumerStatefulWidget {
  final QuestionsPack questionsPack;
  const QuestionsScreen({super.key, required this.questionsPack});

  @override
  ConsumerState<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends ConsumerState<QuestionsScreen> {
  late final QuestionsPack questionsPack;
  late final List<Question> questions;

  @override
  void initState() {
    questionsPack = widget.questionsPack;
    questions = questionsPack.questions;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String language = ref.read(languageProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BaseScreen(
        appBar: CustomAppBar(
          title: questionsPack.packName[language]!,
          withBackButton: true,
          centerTitle: true,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CardSwiper(
                isLoop: false,
                allowedSwipeDirection: AllowedSwipeDirection.symmetric(
                  horizontal: true,
                ),
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) =>
                        QuestionCard(question: questions[index]),
                cardsCount: questions.length,
              ),
            ),
            // SizedBox(height: height * kSizedBoxHeightFactor),
            // Flexible(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.cancel_outlined,
            //           size: 50,
            //           color: AppTheme.secondary,
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: Icon(Icons.check_circle_outline_rounded, size: 50),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
