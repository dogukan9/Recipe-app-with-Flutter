
import 'package:flutter/material.dart';
import '../screen/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
 final String title;
 final Color color;
 final String id;

 CategoryItem(this.id,this.title,this.color);

 void selectCategory(BuildContext ctx){
  //  Navigator.of(ctx).push(MaterialPageRoute(builder:(_){
  //    return CategoryMealsScreen(id,title);

  //  },),);
  Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,arguments: {
    "id":id,
    "title":title
  });

 }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap:()=>selectCategory(context) ,
      child: Container(
      padding:const EdgeInsets.all(15),
      child: Text(title,style: Theme.of(context).textTheme.bodyText1),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[color.withOpacity(0.7),color.withOpacity(1)],
          begin: Alignment.topLeft,
          end:Alignment.bottomRight,

          ),
          borderRadius: BorderRadius.circular(15)
          ),
    )
    );
  }
}