import 'package:flutter/material.dart';
import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  @override
  final String id;
  final String title;
  final String imageurl;
  final int duration;
  final complexity Complexity;
  final Affordability affordability;
  
   MealItem({
    required this.id,
    required this.title,
    required this.imageurl,
    required this.affordability,
    required this.Complexity,
    required this.duration,
    
  });
  String complexityText() {
    switch (Complexity) {
      case complexity.Simple:
        return 'simple';
      case complexity.Challenging:
        return 'challenging';
      case complexity.Hard:
        return 'Hard';
      default:
        return 'unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.pricey:
        return 'pricey';
      case Affordability.Luxurious:
        return 'Expensive';
      default:
        return 'unknown';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
       // removeItem(result);
      }
    });
  }

    Widget build(BuildContext context) {
      return InkWell(
        onTap: () => selectMeal(context),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageurl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.schedule,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          '$duration min',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.work,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          complexityText(),
                          style: const TextStyle(color: Colors.black),
                        ),
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.attach_money,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              affordabilityText,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

