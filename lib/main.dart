//import 'dart:html';

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './dummy_data.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';
import './models/meal.dart';

import 'screens/categories_screen.dart';

void main() => runApp(YourApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createstate() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Map<String, bool> _filters = {
//     'gluten': false,
//     'Lactose': false,
//     'vegan': false,
//     'vegetarian': false,
//   };
//   List<Meal> _availableMeals = DUMMY_MEALS;
//   void _SetFilters(Map<String, bool> filterData) {
//     setState(() {
//       _filters = filterData;
//       _availableMeals = DUMMY_MEALS.where((Meal) {
//         if (_filters['gluten']! && !Meal.isGlutenFree) {
//           return false;
//         }
//         if (_filters['lactose']! && !Meal.isLactoseFree) {
//           return false;
//         }
//         if (_filters['vegan']! && !Meal.isVegan) {
//           return false;
//         }
//         if (_filters['vegetarian']! && !Meal.isVegetarian) {
//           return false;
//         }
//         return true;
//       }).toList();
//     });

//     Widget build(BuildContext context) {
//       return MaterialApp(
//         title: 'Delhi meals',
//         theme: ThemeData(
//             primarySwatch: Colors.pink,
//             accentColor: Colors.amber,
//             canvasColor: Color.fromRGBO(255, 254, 229, 1),
//             fontFamily: 'Raleway',
//             textTheme: ThemeData.light().textTheme.copyWith(
//                   bodyText1: TextStyle(
//                     color: Color.fromARGB(20, 51, 51, 1),
//                   ),
//                   bodyText2: TextStyle(
//                     color: Color.fromARGB(20, 51, 51, 1),
//                   ),
//                   //  titleLarge: TextStyle(
//                   //   fontSize: 24,
//                   //   fontFamily: 'RobotoCondensed',
//                   //  )
//                 )),
//         //home: categoriesScreen(),
//         initialRoute: '/', //default is '/'
//         routes: {
//           '/': (ctx) => TabsScreen(),
//           CategoryMealsScreen.routeName: (ctx) =>
//               CategoryMealsScreen(_availableMeals),
//           MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
//           FiltersScreen.routeName: (ctx) => FiltersScreen(_SetFilters),
//         },
//         onGenerateRoute: (settings) {
//           print(settings.arguments);
//           // if(settings.name=='/meal-detail'){
//           //   return ...
//           // }else if(settings.name=='/something-else'){
//           //   return ...;
//           // }
//           // return MaterialPageRoute(builder: (ctx)=> categoriesScreen());
//         },
//         onUnknownRoute: (settings) {
//           return MaterialPageRoute(
//             builder: (ctx) => CategoryMealsScreen(_availableMeals),
//           );
//         },
//       );
//     }
//   }
// }

class YourApp extends StatefulWidget {
  const YourApp({Key? key}) : super(key: key);

  @override
  State<YourApp> createState() => _YourAppState();
}

class _YourAppState extends State<YourApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'Lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  final List<Meal> _favouriteMeals = [];
  void _SetFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((Meal) {
        if (_filters['gluten']! && !Meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose']! && !Meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan']! && !Meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian']! && !Meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavourite(String MealId) {
    final existingIndex =
        _favouriteMeals.indexWhere((Meal) => Meal.id == MealId);
    if (existingIndex >= 0) {
      setState(() {
        _favouriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favouriteMeals.add(
          DUMMY_MEALS.firstWhere((Meal) => Meal.id == MealId),
        );
      });
    }
  }

  bool _isMealFavourite(String id) {
    return _favouriteMeals.any((Meal) => Meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delhi meals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                  color: Color.fromARGB(20, 51, 51, 1),
                ),
                bodyText2: const TextStyle(
                  color: Color.fromARGB(20, 51, 51, 1),
                ),
                //  titleLarge: TextStyle(
                //   fontSize: 24,
                //   fontFamily: 'RobotoCondensed',
                //  )
              )),
      //home: categoriesScreen(),
      initialRoute: '/', //default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favouriteMeals),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(_toggleFavourite,_isMealFavourite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_SetFilters, _filters),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if(settings.name=='/meal-detail'){
        //   return ...
        // }else if(settings.name=='/something-else'){
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx)=> categoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoryMealsScreen(_availableMeals),
        );
      },
    );
  }
}
