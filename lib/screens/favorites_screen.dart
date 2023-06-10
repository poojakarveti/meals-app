import 'package:flutter/material.dart';
import '../meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;
  FavoritesScreen(this.favouriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return const Center(
        child: Text(
          'You have no favourites yet _ start adding some!',
          style: TextStyle(color: Colors.black),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageurl: favouriteMeals[index].imageUrl,
            affordability: favouriteMeals[index].affordability,
            Complexity: favouriteMeals[index].Complexity,
            duration: favouriteMeals[index].duration,
          );

        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
