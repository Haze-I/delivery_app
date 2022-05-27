import 'package:flutter/material.dart';

class FoodAmount extends StatefulWidget {
  const FoodAmount({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodAmount> createState() => _FoodAmountState();
}

class _FoodAmountState extends State<FoodAmount> {
  int numOfItems = 1;
  final sum = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade100),
      child: Row(
        children: [
          Container(
            width: 30.0,
            height: 30.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              iconSize: 15,
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              },
              splashRadius: 2,
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            child: Text(numOfItems.toString()),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              iconSize: 15,
              onPressed: () {
                if (numOfItems > 1) {
                  setState(() {
                    numOfItems--;
                  });
                }
              },
              splashRadius: 2,
              icon: const Icon(
                Icons.remove,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
