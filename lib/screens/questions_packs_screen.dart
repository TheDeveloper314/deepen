import 'package:deepen/models/category.dart';
import 'package:deepen/models/questions_pack.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:deepen/screens/base_screen.dart';
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
  late final List<QuestionsPack> packs;

  @override
  void initState() {
    category = widget.category;
    packs = category.packs;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String language = ref.watch(languageProvider);
    return Scaffold(
      body: BaseScreen(
        appBar: CustomAppBar(
          title: category.categoryName[language]!,
          withBackButton: true,
          centerTitle: true,
        ),
        child: Center(
          child: Wrap(
            children:
                packs
                    .map(
                      (questionsPack) =>
                          QuestionsPackCard(questionsPack: questionsPack),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}
