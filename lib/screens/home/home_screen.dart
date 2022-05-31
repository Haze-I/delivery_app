import 'package:delivery_app/screens/home/blocs/foods_bloc/foods_cubit.dart';
import 'package:delivery_app/screens/home/blocs/foods_bloc/foods_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../detail/food_detail.dart';

import 'widgets/food_card.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/tab_chip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categories = [
    'All',
    'Breakfast',
    'Vegan',
    'Oriental',
    'Junk Food',
    'Lunch',
    'Italian',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const HomeAppBar(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 35,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return TabChip(
                      isSelected: index == selectedIndex,
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      text: categories[index],
                    );
                  },
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            BlocBuilder<FoodsCubit, FoodsState>(
              builder: (context, state) {
                if (state is FoodsLoaded) {
                  final foods = state.foods
                      .where(
                        (food) =>
                            food.category.toLowerCase() ==
                                categories[selectedIndex].toLowerCase() ||
                            categories[selectedIndex].toLowerCase() == 'all',
                      )
                      .toList();
                  return Expanded(
                    child: RefreshIndicator(
                      onRefresh: () =>
                          BlocProvider.of<FoodsCubit>(context).getFoods(),
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        itemCount: foods.length,
                        itemBuilder: (context, index) => FoodCard(
                          food: foods[index],
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoodDetail(
                                  food: foods[index],
                                ),
                              ),
                            );
                          },
                        ),
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 3 / 4),
                      ),
                    ),
                  );
                }
                if (state is FoodsError) {
                  return Container(
                    alignment: Alignment.center,
                    height: 250,
                    child: const Text('Error'),
                  );
                }
                return Container(
                  alignment: Alignment.center,
                  height: 250,
                  child: const CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
    );
  }
}
