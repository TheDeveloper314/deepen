class QuestionModel {
  final String id;
  final String packId;
  final String questionText;
  final String questionType;
  final int orderIndex;
  final bool isActive;
  final DateTime createdAt;
  final DateTime modifiedAt;

  QuestionModel({
    required this.id,
    required this.packId,
    required this.questionText,
    required this.questionType,
    required this.orderIndex,
    required this.isActive,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> questionJson) {
    return QuestionModel(
      id: questionJson["id"],
      packId: questionJson["packId"],
      questionText: questionJson["questionText"],
      questionType: questionJson["questionType"],
      orderIndex: questionJson["orderIndex"],
      isActive: questionJson["isActive"],
      createdAt: DateTime.parse(questionJson["createdAt"]),
      modifiedAt: DateTime.parse(questionJson["modifiedAt"]),
    );
  }
}
