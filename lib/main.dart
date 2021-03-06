import 'package:delivery_app/screens/cart/blocs/cart_bloc/cart_cubit.dart';
import 'package:delivery_app/screens/home/blocs/foods_bloc/foods_cubit.dart';
import 'package:delivery_app/screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(
          create: (context) => CartCubit(),
        ),
        BlocProvider<FoodsCubit>(
          create: (context) => FoodsCubit()..getFoods(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Foodama Demo',
        home: HomeScreen(),
      ),
    );
  }
}
