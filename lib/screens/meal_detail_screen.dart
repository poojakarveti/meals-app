//import 'package:flutter/cupertino.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
//import 'package:meals_app/models/meal.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/Meal-detail';
  final Function toggleFavourite;
  final Function isFavourite;
  MealDetailScreen(this.toggleFavourite,this.isFavourite);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 100,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((Meal) => Meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(
                      selectedMeal.Ingredients[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                itemCount: selectedMeal.Ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('#${(index + 1)}'),
                      ),
                      title: Text(
                        selectedMeal.steps[index],
                      ),
                    ),
                    Divider()
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavourite(mealId)?Icons.star:Icons.star_border,
        ),
        onPressed:()=> toggleFavourite(mealId),
      ),
    );
  }
}
