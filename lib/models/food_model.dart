import 'dart:convert';

class FoodModel {
  final String name;
  final String id;
  final String imageUri;
  final double price;
  final String category;
  final double rating;
  final String description;

  FoodModel({
    required this.name,
    required this.id,
    required this.imageUri,
    required this.price,
    required this.category,
    required this.rating,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'id': id});
    result.addAll({'imageUri': imageUri});
    result.addAll({'price': price});
    result.addAll({'category': category});
    result.addAll({'rating': rating});
    result.addAll({'description': description});

    return result;
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      name: map['name'] ?? '',
      id: map['id'] ?? '',
      imageUri: map['imageUri'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      category: map['category'] ?? '',
      rating: map['rating']?.toDouble() ?? 0.0,
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) =>
      FoodModel.fromMap(json.decode(source));
}
