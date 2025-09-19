import 'package:deepen/models/questions_pack.dart';

class Question {
  final Map<String, dynamic> questionText;

  Question({required this.questionText});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(questionText: json);
  }
}
