import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_cubit.dart';
import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartNav extends StatelessWidget {
  const CartNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(builder: (context, state) {
      return Container(
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.white.withOpacity(0.9),
              offset: const Offset(0, 0),
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
                  '\$${state.totalPrice}',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                fixedSize: const Size(200, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'Check Out',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
