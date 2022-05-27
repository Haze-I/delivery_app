import 'package:delivery_app/models/food_model.dart';

class CartItem {
  CartItem({
    required this.count,
    required this.food,
  });

  int count;
  final FoodModel food;
}
