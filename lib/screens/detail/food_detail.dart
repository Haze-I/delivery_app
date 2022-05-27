import 'package:delivery_app/models/cart_item.dart';
import 'package:flutter/material.dart';

import '../../models/food_model.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/detail_nav_bar.dart';
import 'widgets/food_amount.dart';
import 'widgets/food_description.dart';
import 'widgets/food_title.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({Key? key, required this.food}) : super(key: key);
  final FoodModel food;

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  int count = 1;
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
                  Image.asset(widget.food.imagePath),
                  const DetailAppBar(),
                ],
              ),
            ),
            FoodTitle(food: widget.food),
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
                    widget.food.ratings.toString(),
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
                  FoodAmount(
                    count: count,
                    onAdd: (prevCount) {
                      setState(() {
                        count = prevCount + 1;
                      });
                    },
                    onRemove: (prevCount) {
                      setState(() {
                        count = prevCount - 1;
                      });
                    },
                  ),
                ],
              ),
            ),
            FoodDescription(food: widget.food),
          ],
        ),
      ),
      bottomNavigationBar: DetailNavBar(
        cartItem: CartItem(
          count: count,
          food: widget.food,
        ),
      ),
    );
  }
}
