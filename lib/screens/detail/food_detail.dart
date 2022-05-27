import 'package:flutter/material.dart';

import '../../models/food_model.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/detail_nav_bar.dart';
import 'widgets/food_amount.dart';
import 'widgets/food_description.dart';
import 'widgets/food_title.dart';

class FoodDetail extends StatelessWidget {
  final FoodModel food;

  const FoodDetail({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Stack(
                children: <Widget>[
                  Image.asset(food.imagePath),
                  const DetailAppBar(),
                ],
              ),
            ),
            FoodTitle(food: food),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 0,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    food.ratings.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    '  (432 Reviews)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  const FoodAmount(),
                ],
              ),
            ),
            FoodDescription(food: food),
          ],
        ),
      ),
      bottomNavigationBar: DetailNavBar(
        food: food,
        // sum: numOfItems * food.price,
      ),
    );
  }
}
