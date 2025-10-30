class QuestionPackModel {
  final String id;
  final String categoryId;
  final String packTitle;
  final String packDescription;
  final String imageUrl;
  final String languageCode;
  final bool isActive;
  final String slug;
  final int packVersion;
  final String visibility;
  final int ratingCount;
  final double ratingAverage;
  final DateTime createdAt;
  final DateTime modifiedAt;

  QuestionPackModel({
    required this.id,
    required this.categoryId,
    required this.packTitle,
    required this.packDescription,
    required this.imageUrl,
    required this.languageCode,
    required this.isActive,
    required this.slug,
    required this.packVersion,
    required this.visibility,
    required this.ratingCount,
    required this.ratingAverage,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory QuestionPackModel.fromJson(Map<String, dynamic> questionPackJson) {
    return QuestionPackModel(
      id: questionPackJson["id"],
      categoryId: questionPackJson["categoryId"],
      packTitle: questionPackJson["packTitle"],
      packDescription: questionPackJson["packDescription"],
      imageUrl: questionPackJson["imageUrl"],
      languageCode: questionPackJson["languageCode"],
      isActive: questionPackJson["isActive"],
      slug: questionPackJson["slug"],
      packVersion: questionPackJson["packVersion"],
      visibility: questionPackJson["visibility"],
      ratingCount: questionPackJson["ratingCount"],
      ratingAverage: double.parse(
        (questionPackJson["ratingAverage"]).toString(),
      ),
      createdAt: DateTime.parse(questionPackJson["createdAt"]),
      modifiedAt: DateTime.parse(questionPackJson["modifiedAt"]),
    );
  }
}
