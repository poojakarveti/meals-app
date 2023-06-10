import 'dart:ffi';

import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../meal_item.dart';
//import 'package:meals_app/models/meal.dart';
//import '../dummy_data.dart';

//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'Category_meals';
  final List<Meal> availableMeals;
  CategoryMealsScreen(this.availableMeals);
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? CategoryTitle;
  List<Meal>? displayedMeals;
  var _loadedinitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedinitData) {
      final routeArgs =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      CategoryTitle = routeArgs['title'] as String;
      final CategoryId = routeArgs['Id'];

      displayedMeals = widget.availableMeals.where((Meal) {
        return Meal.Categories.contains(CategoryId);
      }).toList();
      super.didChangeDependencies();
      _loadedinitData = true;
    }
  }

  void _removeMeal(String MealId) {
    setState(() {
      displayedMeals!.removeWhere((Meal) => Meal.id == MealId);
    });
  }

  // final String CategoryId;
  // final String Categorytitle;
  // CategoryMealsScreen(this.CategoryId, this.Categorytitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals![index].id,
            title: displayedMeals![index].title,
            imageurl: displayedMeals![index].imageUrl,
            affordability: displayedMeals![index].affordability,
            Complexity: displayedMeals![index].Complexity,
            duration: displayedMeals![index].duration,
            // removeItem: _removeMeal,
          );

        },
        itemCount: displayedMeals!.length,
      ),
    );
  }
}
