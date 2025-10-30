class CategoryModel {
  final String id;
  final String categoryName;
  final String imageUrl;
  final String slug;
  final int sortOrder;
  final bool isActive;
  final DateTime createdAt;
  final DateTime modifiedAt;

  CategoryModel({
    required this.id,
    required this.categoryName,
    required this.imageUrl,
    required this.slug,
    required this.sortOrder,
    required this.isActive,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> categoryJson) {
    return CategoryModel(
      id: categoryJson["id"],
      categoryName: categoryJson["categoryName"],
      imageUrl: categoryJson["imageUrl"],
      slug: categoryJson["slug"],
      sortOrder: categoryJson["sortOrder"],
      isActive: categoryJson["isActive"],
      createdAt: DateTime.parse(categoryJson["createdAt"]),
      modifiedAt: DateTime.parse(categoryJson["modifiedAt"]),
    );
  }
}
