class TranslationModel {
  final String id;
  final String entityType;
  final String entityId;
  final String fieldName;
  final String languageCode;
  final String translationText;
  final bool isVerified;
  final DateTime createdAt;
  final DateTime modifiedAt;

  TranslationModel({
    required this.id,
    required this.entityType,
    required this.entityId,
    required this.fieldName,
    required this.languageCode,
    required this.translationText,
    required this.isVerified,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory TranslationModel.fromJson(Map<String, dynamic> translationJson) {
    return TranslationModel(
      id: translationJson["id"],
      entityType: translationJson["entityType"],
      entityId: translationJson["entityId"],
      fieldName: translationJson["fieldName"],
      languageCode: translationJson["languageCode"],
      translationText: translationJson["translationText"],
      isVerified: translationJson["isVerified"],
      createdAt: DateTime.parse(translationJson["createdAt"]),
      modifiedAt: DateTime.parse(translationJson["modifiedAt"]),
    );
  }
}
