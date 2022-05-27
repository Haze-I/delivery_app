import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({
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
            iconSize: 15,
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
        ),
        Column(
          children: const [
            Text(
              'Cart',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
              Icons.more_horiz_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
