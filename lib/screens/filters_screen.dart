//import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:meals_app/globals/colors.dart';
//import 'package:meals_app/globals/colors.dart';
import '../main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function SaveFilters;
  final Map<String, bool> currentFilters;
  FiltersScreen(this.SaveFilters, this.currentFilters);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FiltersScreen> {
  poojamental() {}
  bool _glutenFree = false;
  bool _Vegetarian = false;
  bool _Vegan = false;
  bool _Lactosefree = false;
  @override
  initState() {
    _glutenFree = true;
    _Lactosefree = false;
    _Vegan = true;
    _Vegetarian = true;
    super.initState();
  }

  // @override
  // void initState() {
  //   // _glutenFree = widget.currentFilters['glutten'];
  //   // _Lactosefree = widget.currentFilters['lactose'];
  //   // _Vegetarian = widget.currentFilters['vegetarian'];
  //   // _Vegan = widget.currentFilters['vegan'];
  //   super.initState();
  // }

  Widget _buildSwitcListTile({
    String? title,
    String? description,
    bool? currentValue,
    Function? updateValue,
  }) {
    return SwitchListTile(
      title: Text(title!),
      value: currentValue!,
      subtitle: Text(
        description!,
      ),
      onChanged: updateValue!(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yours Filters!'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _Lactosefree,
                'vegan': _Vegan,
                'vegetarian': _Vegetarian,
              };
              widget.SaveFilters();
              // final selectedFilters ={
              //   'gluten'=_glutenFree,
              //   'lactose'=_Lactosefree,
              //   'Vegan'=_Vegan,
              //   'Vegetarian'=_Vegetarian,
              // };
              // Widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust Your MealSelection.',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                SwitchListTile(
                    title: const Text("Gluten_free"),
                    subtitle: const Text("only include gluten_free meals only."),
                    value: _glutenFree,
                    onChanged: (bool newvalue) {
                      setState(() {
                        _glutenFree = newvalue;
                      });
                    }),
                SwitchListTile(
                    title: const Text("vegetarian"),
                    subtitle: const Text("only include vegetarian meals only."),
                    value: _Vegetarian,
                    onChanged: (bool newvalue) {
                      setState(() {
                        _Vegetarian = newvalue;
                      });
                    }),
                SwitchListTile(
                    title: const Text("Lactose_free"),
                    subtitle: const Text("only includes lactose_free meals only."),
                    value: _Lactosefree,
                    onChanged: (bool newvalue) {
                      setState(() {
                        _Lactosefree = newvalue;
                      });
                    }),
                SwitchListTile(
                    title: const Text("vegan"),
                    subtitle: const Text("only includes vegan meals only."),
                    value: _Vegan,
                    onChanged: (bool newvalue) {
                      setState(() {
                        _Vegan = newvalue;
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
