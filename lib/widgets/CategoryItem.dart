import 'package:flutter/material.dart';
import 'package:lab/Views/FoodPage.dart';
import 'package:lab/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({required this.category,key}) : super(key: key);

  //TODO: git hub
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FoodPage(category: category,);
        },));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(category.title, style: Theme.of(context).textTheme.headline6,),
          ),
        ),
      ),
    );
  }
}
