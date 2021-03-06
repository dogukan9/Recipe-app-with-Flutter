
import 'package:flutter/material.dart';
import './screen/tabs_screen.dart';

import './screen/category_meals_screen.dart';
import './screen/meal_detail_screen.dart';
 import './screen/categories_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255,254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20,51,51,1),fontSize: 20),
          bodyText2: TextStyle(color: Color.fromRGBO(20,51,51,1)),
          


        )
       
      ),
       initialRoute:"/" , // default is '/'
       routes: {
         "/":(context) =>  TabsScreen(),
       CategoryMealsScreen.routeName:(context) => CategoryMealsScreen(),
       MealDetailScreen.routeName:(context) => MealDetailScreen()
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
      },
    );
  }
}
