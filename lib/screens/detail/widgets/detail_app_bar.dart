import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_cubit.dart';
import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_state.dart';
import 'package:delivery_app/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
              child: IconButton(
                iconSize: 20,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const CartScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                  if (state.items.isNotEmpty)
                    _buildBadge(
                      context,
                      state.totalCount,
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBadge(BuildContext context, int count) {
    return Positioned(
      right: 0,
      top: 0,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Text(
          count.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
