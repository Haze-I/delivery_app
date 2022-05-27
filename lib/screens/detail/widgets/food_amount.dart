import 'package:flutter/material.dart';

class FoodAmount extends StatelessWidget {
  const FoodAmount({
    Key? key,
    required this.count,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);
  final int count;
  final ValueChanged<int> onAdd;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade100),
      child: Row(
        children: [
          Container(
            width: 30.0,
            height: 30.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              iconSize: 15,
              onPressed: () {
                onAdd(count);
              },
              splashRadius: 2,
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            child: Text('$count'),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              iconSize: 15,
              onPressed: count > 1
                  ? () {
                      onRemove(count);
                    }
                  : null,
              splashRadius: 2,
              icon: const Icon(
                Icons.remove,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
