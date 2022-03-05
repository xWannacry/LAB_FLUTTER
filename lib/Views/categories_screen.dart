import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/CategoryItem.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : GridView(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16),
        children: DUMMY_CATEGORIES.map((e){
          return CategoryItem(category: e);
        }).toList(),
      ),
      appBar: AppBar(
        title: const Text('My Recipes App'),
      ),

    );
  }
}
