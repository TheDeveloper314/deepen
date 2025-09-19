import 'package:deepen/constants.dart';
import 'package:deepen/models/category.dart';
import 'package:deepen/models/questions_pack.dart';
import 'package:deepen/providers/language_provider.dart';
import 'package:deepen/widgets/questions_pack_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../engines/main_engine.dart';

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
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        backgroundColor: AppTheme.background,
        title: Center(
          child: Text(category.categoryName[language] ?? "Unnamed"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (language == "en") {
                  ref.read(languageProvider.notifier).state = "ar";
                } else {
                  ref.read(languageProvider.notifier).state = "en";
                }
              });
            },
            icon: Icon(Icons.language),
          ),
        ],
      ),
      body: SafeArea(
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
    );
  }
}
