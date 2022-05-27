import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/models/food_model.dart';
import 'package:delivery_app/screens/home/blocs/foods_bloc/foods_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodsCubit extends Cubit<FoodsState> {
  FoodsCubit() : super(FoodsInitial());

  Future<void> getFoods() async {
    try {
      emit(FoodsLoading());
      final db = FirebaseFirestore.instance;
      final foods = await db.collection('foods').get();
      final foodModels = foods.docs.map(
        (doc) {
          final foodMap = doc.data();
          foodMap['id'] = doc.id;
          return FoodModel.fromMap(foodMap);
        },
      ).toList();
      emit(FoodsLoaded(foods: foodModels));
    } catch (e) {
      emit(FoodsError());
    }
  }
}
