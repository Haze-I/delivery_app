import 'package:flutter/material.dart';
import '../map/map_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  children: const [
                    SizedBox(
                      height: 100,
                    ),
                    Text('Great!'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Order Success',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Text('Subtotal'),
                      trailing: Text(
                        '\$45.00',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: Text('Delivery Fee'),
                      trailing: Text(
                        '\$5.00',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: Text('Date'),
                      trailing: Text(
                        'May 31, 2021',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text('Total Pay'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$50.00',
                      style: TextStyle(
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
                top: -10,
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
  }
}
