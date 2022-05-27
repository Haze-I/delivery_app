class FoodModel {
  final String name;
  final String id;
  final String imagePath;
  final double price;
  final String category;
  final double ratings;
  final String description;

  FoodModel(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.ratings,
      required this.description});
}
