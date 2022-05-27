import 'package:delivery_app/models/food_model.dart';

abstract class FoodsState {}

class FoodsInitial extends FoodsState {}

class FoodsLoading extends FoodsState {}

class FoodsLoaded extends FoodsState {
  final List<FoodModel> foods;

  FoodsLoaded({required this.foods});
}

class FoodsError extends FoodsState {}
