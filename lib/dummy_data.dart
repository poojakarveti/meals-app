import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/meal.dart';

const DUMMY_CATEGORIES =  [
  category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  category(
    id: 'c2',
    title: 'Quick & easy',
    color: Colors.red,
  ),
  category(
    id: 'c3',
    title: 'Hamberger',
    color: Colors.orange,
  ),
  category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  category(
    id: 'c5',
    title: 'light & lovely',
    color: Colors.blue,
  ),
  category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];
const DUMMY_MEALS =  [
  Meal(
    id:  'm1', 
    Categories: [
      'c1',
      'c2',
    ], 
    title: 'Sphageti with tomato sauce',
    
     imageUrl: 'https://www.allrecipes.com/thmb/QFG50B-NKSOEhlFassqkORq6IwA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/999096-3458e9f33928457e8d48a776a29ee57e.jpg', 
     Ingredients: [
      '4 Tomatoes',
      'one Table Spoon of Olive oil',
      '1 onion',
      '250g Sphaggeti',
      'Spices',
      'cheese(optional)'
     ], 
     steps: [
      'cut the tomatoes and onion into small pieces.',
      'Boil some water_add salt to it once it boil.',
      'put  the Sphagetti into the boiling waer _ they should be done.',
      'In the meantime,heaten up some Olive oil and add cut onions.',
      'After 2 minutes,add the tomato pieces,add salt,pepper and your.',
      'The sauce will be done once the sphageeti are.',
      'Feel free to add some sauce on top of the finished dish.'
     ], 
     duration: 20, 
     Complexity: complexity.Simple, 
     affordability: Affordability.Affordable,
      isGlutenFree: false,
       isLactoseFree: true, 
       isVegan: true, 
       isVegetarian: true,
       ),
       Meal(
        id: 'm2', 
        Categories:[
          'c2',
        ], 
        title: 'Toast Hawaii',
         imageUrl:'https://www.recipesfromeurope.com/wp-content/uploads/2020/12/german-toast-hawaii.jpg', 
        Ingredients: [
          '1 slice white bread.',
          '1 slice Ham.',
          '1 slice pineapple.',
          '1_2 slices of cheese.',
          'Butter'
        ], 
        steps:[
          'Butter one side of the white bread.',
          'Layer ham,the pineapple cheese on the white bread.',
          'Bake the toast for round about 10 minutes in the oven at 200 c.'
        ],
         duration: 10,
         Complexity: complexity.Simple, 
         affordability: Affordability.Affordable,
          isGlutenFree: false, 
          isLactoseFree: false, 
          isVegan: false, 
          isVegetarian: false,
          ),
Meal(
  id:'m3' ,
   Categories: [
    'c2',
    'c3',
   ],
    title:  ' classic Hamberger',
    imageUrl: 'https://www.cookhomey.com/wp-content/uploads/2021/02/Classic-homemade-hamburger.jpg',
     Ingredients: [
      '300g Cattle Hack',
      '1 tomato',
      '1 cucumbur',
      '1 onion',
      'ketchup',
      '2 burger buns'
     ],
      steps: [
        'from 2 patties',
        'fry the patties for c. 4 minutes on each side',
        'Quickly fry the buns c. 1 minute on each side',
        'Bunch buns with ketchup',
        'surve burger with tomato,cucumbur and onion'
      ],
       duration: 45, 
       Complexity: complexity.Simple,
        affordability: Affordability.pricey, 
        isGlutenFree: false,
         isLactoseFree: true, 
         isVegan: false,
          isVegetarian: false,
          ),
      Meal(
        id: 'm4',
         Categories: [
          'c4',
         ], 
         title: 'wiener schnitzel',
          imageUrl: 'https://honest-food.net/wp-content/uploads/2012/12/wiener-schnitzel-horizontal.jpg', 
          Ingredients: [
          '8 veal cutlets' ,
          '4 eggs',
          '200g Bread crumbs',
          '100g flour',
          '300 ml butter',
          '100g vegetable oil',
          'salt',
          'Lemon slices' 
          ], 
          steps: [
            'Tendarize the veal to about 2_4mm , and salt on both sides.',
            'on a flat plate,stir the eggs briefly with a fork.',
            'lightly coat the cutlets in flour then dip into the egg.',
            'Heat the butter and oil in a large pan(allow the fat toget).',
            'make sure to toss the pan regularly  so that the schintzels.',
            'Remove,and drain on kitchen paper.fry the parsely in the remembering',
            'place the schnitzels on awarmed plate and serve garniushed with'
          ], 
          duration: 60, 
          Complexity:complexity.Challenging,
           affordability: Affordability.Luxurious, 
           isGlutenFree: false, 
           isLactoseFree: false, 
           isVegan: false, 
           isVegetarian: false
           ),
           Meal(
            id:'m5' ,
             Categories: [
              'c2',
                 'c5',
              'c10',
             ],
              title: 'salad with smoked salman',
               imageUrl:'https://img.taste.com.au/6EwE-orX/w720-h480-cfill-q80/taste/2018/07/smoked-salmon-salad-with-green-goddess-dressing-139471-1.jpg', 
               Ingredients: [
                'arugula',
                'Lamb\'s Lettus',
                'parsely',
                'fennel',
                '200g smoked salmon',
                'mustard',
                'Balsamic venegar',
                'Olive oil',
                'salt and pepper'

               ],
                steps: [
                  'wash and cut salab and herbs',
                  'Dice the salmon',
                  'process mustrad veniger and Olive oil into the dessing',
                  'prepare the salad',
                  'add salmon cubes and dressing'
                ], 
                duration:15, 
                Complexity: complexity.Simple,
                 affordability: Affordability.Luxurious, 
                 isGlutenFree: true,
                  isLactoseFree: true,
                   isVegan: false,
                    isVegetarian:true
                    ),
            Meal(
              id: 'm6', 
              Categories: [
                'c6',
                'c10',
              ], 
              title: 'Delicious orange moussee', 
              imageUrl:'https://feed-your-sole.com/wp-content/uploads/2019/12/Orange-Chocolate-Mousse-800x766-800x530.png' , 
              Ingredients: [
               '4 sheets of Galatine',
               '150ml orange juice',
               '80g sugar',
               '300g yoghurt',
               '200g cream',
               'orange peel', 
              ],
               steps: [
                'Dissolve galetine in pot',
                'Add orange juice and sugar',
                'Take pot of the stove',
                'add 2 table spoons of yoghurt',
                'stir gelatin under remaining yoghurt',
                'cool everything down in the refrigeretor',
                'whip the cream and lift it  under die orange mass',
                'cool down again for atleast 4 hours',
                'serve with orange peel'
                
               ],
                duration: 40, 
                Complexity: complexity.Hard, 
                affordability: Affordability.Affordable, 
                isGlutenFree: true, 
                isLactoseFree: false,
                 isVegan: false,
                  isVegetarian: true,
            ),
            Meal(
              id: 'm7',
               Categories: [
                'c7',
               ], 
               title: 'pancakes', 
               imageUrl:'https://www.eggs.ca/assets/RecipePhotos/Fluffy-Pancakes-New-CMS.jpg' , 
               Ingredients: [
                '1 1/2 cups all_purpose flour',
                '3 1/2 Teaspoons baking powder',
                '1 Teaspoon salt',
                '1 Tablespoon white sugar',
                '1 1/4 cups milk',
                '1 egg',
                '3 tablespons Butter,melted',
               ],
                steps: [
                 'in a large bowl ,swift together the flour,baking powder salt',
                 'Make a well in the centre and pour in the milk ,egg and melted' ,
                 'Heat a lightly oiled gridle for frying pan over medium high',
                 'poor or soup the batter on to the graddle,using approximtely',
                ],
                duration: 20, 
                Complexity: complexity.Simple, 
                affordability: Affordability.Affordable,
                 isGlutenFree: true, 
                 isLactoseFree: false, 
                 isVegan: false,
                  isVegetarian: true
                  ),
                  Meal(
                    id: 'm8', 
                    Categories: [
                      'c8',
                    ], 
                    title: 'creamy indian chicken curry', 
                    imageUrl: 'https://salu-salo.com/wp-content/uploads/2017/08/Creamy-Mild-Chicken-Curry-2.jpg',
                     Ingredients:[
                      '4 chicken Breasts',
                      '1 onion',
                      '2 cloves of Garlic',
                      '1 piece of ginger',
                      '4 tablespoons almonds'
                     ], 
                     steps: [
                      'slice and try chicken breast ',
                      'process onion,ginger,garlic paste and sauce everything',
                      'add spices and stir try',
                      'add chicken breast+ 250 ml of water and cook everything for 10 minutes',
                      'add coconut milk',
                      'serve with rice'
                     ], 
                     duration: 35, 
                     Complexity: complexity.Challenging, 
                     affordability: Affordability.pricey, 
                     isGlutenFree: true, 
                     isLactoseFree: true, 
                     isVegan: false,
                      isVegetarian: false,
                      ),
                      Meal(
                        id:'m9' , 
                        Categories: [
                          'c9',
                        ], 
                        title: 'chocolate souffle', 
                        imageUrl:'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fassets.marthastewart.com%2Fstyles%2Fwmax-750%2Fd27%2Fchocolate-souffle-med107742%2Fchocolate-souffle-med107742_horiz.jpg%3Fitok%3Dh6VrTFqc' , 
                        Ingredients: [
                         '1 teaspoon melted butter',
                         '2 tablespoons white sugar' ,
                         '2 Ounces 70% dark choclates ,broken into pieces',
                         '1 tablespoon butter',
                         '1 table spoon all_purpose flour',
                         '4 1/3 tablespoons cold milk',
                         '1 pinch salt',
                         '1 pinch cayene pepper',
                         '1 large egg yalk',
                         '2 Large egg whites',
                         '1 pinch cream of torter',
                         '1 table spoon white sugar',
                        ], 
                        steps: [
                         'preheat ovn to 190c.line a rimmed baking sheet with parchme.',
                         'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon.',
                         'add 1 tablespoon white sugar to ramekins .rotate ramekins.',
                         'place choclate pieces into a metal mixing bowl.',
                         'place bowl over a pan of about 3 cups hot water over low heat',
                         'melt 1 tablespoon butter in a skillet over medium heat .',
                         'whisk in cold milk until mixture becomes smooth and thickness.',
                         'add salt and cayenne pepper.mix together throughly .add egg.',
                         'leave bowl above the hot (not simmering) water to keep the choclate.',
                         'place 2 egg whites in a mixing bowl;add cream of tarter.',
                         'add 1/3 of sugar and whisk in.whisk in a bit more sugar about' ,
                         'whisk in the rest of the sugar .continue whisking until the sugar.',
                         'transfer a little less than half of egg whites to choclate.',
                         'mix until egg whites are throughly incorporated into the choclate .',
                         'add the rest of the whites egg:gently fold into the choclate.',
                         'stop mixing the after egg whites disappears.divide mixture bet.',
                         'break it preheated oven until scuffles and puffed and have rice.',
                        ],
                        duration: 45,
                         Complexity: complexity.Hard,
                          affordability: Affordability.Affordable, 
                          isGlutenFree: true,
                           isLactoseFree: false,
                            isVegan: false, 
                            isVegetarian: true,
                            ),
                            Meal(
                              id: 'm10', 
                              Categories: [
                                'c2',
                                'c5',
                                'c10',
                              ], 
                              title: 'Asparagus salad with cherry Tomatoes', 
                              imageUrl:'https://img.taste.com.au/XB1Pz5hO/w506-h253-cfill/taste/2016/11/asparagus-avocado-and-cherry-tomato-salad-67600-1.jpeg' ,
                               Ingredients: [
                                'white and green asparagus',
                                '30g pine nuts',
                                '300g cherry tomatoes',
                                'salad',
                                'salt,pepper and olive oil'
                               ], 
                               steps: [
                                'wash,peel and cut the asparagus',
                                'cook in salted water',
                                'salt and pepper the asparagus',
                                'Roast the pine nuts',
                                'Halve the tomatoes',
                                'mix with asparagus,salad and ressing',
                                'serve with buegette'
                               ], 
                               duration: 30, 
                               Complexity: complexity.Simple,
                                affordability: Affordability.Luxurious, 
                                isGlutenFree: true, 
                                isLactoseFree: true,
                                 isVegan: true, 
                                 isVegetarian: true
                                 ),
];