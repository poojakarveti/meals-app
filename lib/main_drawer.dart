import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler(),
    );
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'cooking up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TabsScreen([])));
            },
            child: buildListTile('Meals', Icons.restaurant, () {
              // Navigator.of(context).pushNamed('/');
            }),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FiltersScreen((){},{})));
            },
            child: buildListTile('Filters', Icons.settings, () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => FiltersScreen()));

              // Navigator.of(context).pushNamed(FiltersScreen.routeName);
            }),
          ),
        ],
      ),
    );
  }
}
