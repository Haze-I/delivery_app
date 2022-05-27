import 'package:flutter/material.dart';

class TabChip extends StatelessWidget {
  const TabChip({
    Key? key,
    required this.isSelected,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final bool isSelected;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? Colors.orange : Colors.grey[200],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 12.5),
        child: Text(
          text,
          style: Theme.of(context).textTheme.button?.copyWith(
                color: isSelected ? Colors.white : Colors.grey[700],
              ),
        ),
      ),
    );
  }
}
