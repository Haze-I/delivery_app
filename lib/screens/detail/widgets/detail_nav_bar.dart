import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailNavBar extends StatelessWidget {
  final CartItem cartItem;
  const DetailNavBar({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.white.withOpacity(0.9),
            offset: const Offset(0, -2.5),
          )
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                ),
              ),
              Text(
                '\$${cartItem.count * cartItem.food.price}',
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<CartCubit>(context).add(cartItem);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              onPrimary: Colors.white,
              fixedSize: const Size(180, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text(
              'Add to cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
