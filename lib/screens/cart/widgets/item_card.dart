import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.cartItem,
  }) : super(key: key);
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 2),
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.check_box_rounded,
              color: Colors.orange,
            ),
          ),
          SizedBox(
            width: 115,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(imageUrl: cartItem.food.imageUri),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  cartItem.food.category,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  cartItem.food.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${cartItem.food.price}',
                  style: const TextStyle(color: Colors.orange),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade200,
                  ),
                  child: IconButton(
                    iconSize: 15,
                    onPressed: cartItem.count >= 1
                        ? () {
                            BlocProvider.of<CartCubit>(context)
                                .remove(cartItem);
                          }
                        : null,
                    icon: const Icon(
                      Icons.remove,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: Text('${cartItem.count}'),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 11, 48, 79),
                  ),
                  child: IconButton(
                    iconSize: 15,
                    onPressed: () {
                      BlocProvider.of<CartCubit>(context).add(cartItem);
                    },
                    icon: Icon(
                      color: Colors.white,
                      Icons.add,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
