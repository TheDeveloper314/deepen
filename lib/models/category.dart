import 'package:deepen/models/questions_pack.dart';

class Category {
  final Map<String, String> categoryName;
  final String categoryImage;
  final List<QuestionsPack> packs;

  Category({
    required this.categoryName,
    required this.categoryImage,
    required this.packs,
  });

  factory Category.fromJson(
    Map<String, dynamic> json,
    List<QuestionsPack> packs,
  ) {
    return Category(
      categoryName: json["categoryName"],
      categoryImage: json["categoryImage"],
      packs: packs,
    );
  }
}
