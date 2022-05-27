import 'package:delivery_app/models/cart_item.dart';

class CartState {
  final Map<String, CartItem> items;
  CartState({
    required this.items,
  });

  int get totalCount => items.values.fold(0, (sum, item) => sum + item.count);

  double get totalPrice =>
      items.values.fold(0, (sum, item) => sum + (item.food.price * item.count));
}
