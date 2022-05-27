import 'package:flutter/material.dart';

import '../../models/food_model.dart';
import 'widgets/cart_app_bar.dart';
import 'widgets/cart_bottom_nav.dart';
import 'widgets/item_card.dart';

class CartScreen extends StatelessWidget {
  final FoodModel food;
  const CartScreen({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CartAppBar(),
            ListView.builder(
              itemBuilder: (context, index) => const ItemCard(),
              scrollDirection: Axis.vertical,
              //itemCount: the amount of products added,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CartNav(),
    );
  }
}
