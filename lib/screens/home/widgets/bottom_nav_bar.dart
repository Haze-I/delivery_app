import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  //final _selectedIndex = 0;

  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.white.withOpacity(0.5),
            offset: const Offset(0, -2.5),
          )
        ],
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.category_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
