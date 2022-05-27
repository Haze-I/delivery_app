import 'package:flutter/material.dart';
import '../../../models/food_model.dart';

class FoodTitle extends StatelessWidget {
  final FoodModel food;
  const FoodTitle({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        food.name,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
      ),
    );
  }
}
