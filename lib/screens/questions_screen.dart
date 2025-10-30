import 'package:deepen/screens/base_screen.dart';
import 'package:deepen/services/local_database_engine.dart';
import 'package:deepen/widgets/question_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/app_database.dart' show QuestionPack, Question;
import '../widgets/custom_app_bar.dart';

const double kSwipeCardsHeightFactor = 0.45;

class QuestionsScreen extends ConsumerStatefulWidget {
  final QuestionPack questionPack;

  const QuestionsScreen({super.key, required this.questionPack});

  @override
  ConsumerState<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends ConsumerState<QuestionsScreen> {
  late final QuestionPack questionPack;

  @override
  void initState() {
    questionPack = widget.questionPack;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    final LocalDatabaseEngine localDatabaseEngine = ref.watch(
      localDatabaseEngineProvider,
    );
    return BaseScreen(
      appBar: CustomAppBar(
        title: questionPack.packTitle,
        withBackButton: true,
        centerTitle: true,
        showLanguageButton: true,
      ),
      child: SizedBox(
        height: mediaHeight * kSwipeCardsHeightFactor,
        width: double.infinity,
        child: FutureBuilder(
          future: localDatabaseEngine.getQuestionByQuestionPackId(
            questionPack.id,
          ),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final List<Question> questions = snapshot.data;
              return CardSwiper(
                isLoop: false,
                allowedSwipeDirection: AllowedSwipeDirection.symmetric(
                  horizontal: true,
                ),
                numberOfCardsDisplayed: 1,
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) =>
                        QuestionCard(question: questions[index]),
                cardsCount: questions.length,
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: Text("Error loading questions"));
            }
          },
        ),
      ),
    );
  }
}
