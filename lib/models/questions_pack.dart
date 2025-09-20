import 'package:deepen/models/question.dart';

class QuestionsPack {
  final Map<String, String> packName;
  final String packImage;
  final List<Question> questions;

  QuestionsPack({
    required this.packName,
    required this.packImage,
    required this.questions,
  });

  factory QuestionsPack.fromJson(
    Map<String, dynamic> json,
    List<Question> questions,
  ) {
    return QuestionsPack(
      packName: json["packName"],
      packImage: json["packImage"],
      questions: questions,
    );
  }
}
