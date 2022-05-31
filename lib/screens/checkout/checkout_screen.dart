import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_cubit.dart';
import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_state.dart';
import 'package:delivery_app/screens/map/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(24),
                    padding: const EdgeInsets.all(8),
                    height: 480,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        const Text('Great!'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Order Success',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: const Text('Subtotal'),
                          trailing: Text(
                            '\$${state.totalPrice}',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const ListTile(
                          leading: Text('Delivery Fee'),
                          trailing: Text(
                            '\$10.00',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const ListTile(
                          leading: Text('Date'),
                          trailing: Text(
                            'May 31, 2022',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text('Total Pay'),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${state.totalPrice + 10} ',
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    right: 0,
                    top: -5,
                    child: Icon(
                      Icons.check_circle,
                      size: 100,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.white,
                  offset: Offset(0, 0),
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                fixedSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'View map',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
