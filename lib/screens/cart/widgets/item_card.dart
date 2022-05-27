import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

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
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/kitfo.jpeg"),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Lunch',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text('Kitfo', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  '\$15.00',
                  style: TextStyle(color: Colors.orange),
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
                    color: Colors.grey.shade100,
                  ),
                  child: IconButton(
                    iconSize: 15,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: Text('1'),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade100,
                  ),
                  child: IconButton(
                    iconSize: 15,
                    onPressed: () {},
                    icon: const Icon(
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
