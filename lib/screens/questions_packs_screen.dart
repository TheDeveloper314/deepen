import 'package:deepen/database/app_database.dart' show Category, QuestionPack;
import 'package:deepen/screens/base_screen.dart';
import 'package:deepen/services/local_database_engine.dart';
import 'package:deepen/widgets/questions_pack_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/custom_app_bar.dart';

class QuestionsPacksScreen extends ConsumerStatefulWidget {
  final Category category;

  const QuestionsPacksScreen({super.key, required this.category});

  @override
  ConsumerState<QuestionsPacksScreen> createState() =>
      _QuestionsPacksScreenState();
}

class _QuestionsPacksScreenState extends ConsumerState<QuestionsPacksScreen> {
  late final Category category;

  @override
  void initState() {
    category = widget.category;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final LocalDatabaseEngine localDatabaseEngine = ref.watch(
      localDatabaseEngineProvider,
    );
    return BaseScreen(
      appBar: CustomAppBar(
        title: category.categoryName,
        withBackButton: true,
        centerTitle: true,
      ),
      child: FutureBuilder(
        future: localDatabaseEngine.getQuestionPackByCategoryId(category.id),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final List<QuestionPack> packsByCategoryId = snapshot.data;
            return Center(
              child: Wrap(
                direction: Axis.horizontal,
                children:
                    packsByCategoryId
                        .map(
                          (questionPack) =>
                              QuestionsPackCard(questionsPack: questionPack),
                        )
                        .toList(),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(
              child: Text(
                "Error loading questions pack from the ${category.categoryName}",
              ),
            );
          }
        },
      ),
    );
  }
}
