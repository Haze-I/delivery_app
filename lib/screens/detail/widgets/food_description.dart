import 'package:flutter/material.dart';

import 'package:expandable_text/expandable_text.dart';

import '../../../models/food_model.dart';

class FoodDescription extends StatelessWidget {
  final FoodModel food;
  const FoodDescription({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ExpandableText(
        food.description,
        expandText: 'Read more',
        collapseText: 'Show less',
        maxLines: 4,
        linkColor: Colors.orangeAccent,
      ),
    );
  }
}
