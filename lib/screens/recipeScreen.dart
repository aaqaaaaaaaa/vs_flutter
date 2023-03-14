import 'package:flutter/material.dart';
import 'package:vs_flutter/api/mock_fooderlich_service.dart';
import 'package:vs_flutter/components/recipeSliver.dart';
import 'package:vs_flutter/models/models.dart';

class RecipeScreenSliver extends StatelessWidget {
  RecipeScreenSliver({Key? key}) : super(key: key);
  final eploreServices = MockFooderlichService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: eploreServices.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return RecipeGridViewSliver(recipes: snapshot.data ?? []);
        } else {
          // ignore: prefer_const5_constructors
          return Center(
            child: const CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
