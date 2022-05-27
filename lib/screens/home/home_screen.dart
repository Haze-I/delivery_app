import 'package:flutter/material.dart';

import '../../models/food_data.dart';
import '../detail/food_detail.dart';
import 'widgets/bottom_nav_bar.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
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
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
