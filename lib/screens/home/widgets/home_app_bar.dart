import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 2),
            ],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: IconButton(
            iconSize: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.sort_rounded,
              color: Colors.black,
            ),
            splashRadius: 2,
          ),
        ),
        const Text(
          "Foodama",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 2),
            ],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            splashRadius: 2,
          ),
        ),
      ],
    );
  }
}
