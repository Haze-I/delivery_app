import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_cubit.dart';
import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/food_model.dart';
import 'widgets/cart_app_bar.dart';
import 'widgets/cart_bottom_nav.dart';
import 'widgets/item_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CartAppBar(),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.items.length,
                    itemBuilder: (context, index) => ItemCard(
                      cartItem: state.items.values.elementAt(index),
                    ),
                    scrollDirection: Axis.vertical,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const CartNav(),
        );
      },
    );
  }
}
