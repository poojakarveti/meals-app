import 'package:flutter/foundation.dart';

enum complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> Categories;
  final String title;
  final String imageUrl;
  final List<String> Ingredients;
  final List<String> steps;
  final int duration;
  final complexity Complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
   required this.id,
   required this.Categories,
   required this.title,
   required this.imageUrl,
   required this.Ingredients,
   required this.steps,
   required this.duration,
   required this.Complexity,
   required this.affordability,
   required this.isGlutenFree,
   required this.isLactoseFree,
   required this.isVegan,
   required this.isVegetarian,
  });
}
