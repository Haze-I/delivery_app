import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState(items: {}));

  Future<void> add(CartItem cartItem) async {
    final items = state.items;
    final foodId = cartItem.food.id;
    if (items.containsKey(foodId)) {
      items[foodId]!.count += 1;
    } else {
      items[foodId] = CartItem(count: cartItem.count, food: cartItem.food);
    }
    emit(CartState(items: Map<String, CartItem>.from(items)));
  }

  Future remove(CartItem cartItem) async {
    final items = state.items;
    final foodId = cartItem.food.id;
    if (items.containsKey(foodId)) {
      items[foodId]!.count -= 1;
      if (items[foodId]!.count == 0) {
        items.remove(foodId);
      }
    }
    emit(CartState(items: Map<String, CartItem>.from(items)));
  }
}
