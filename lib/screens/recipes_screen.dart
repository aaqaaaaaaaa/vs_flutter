import 'package:flutter/material.dart';
import 'package:vs_flutter/api/mock_fooderlich_service.dart';
import 'package:vs_flutter/components/recipes_grid_view.dart';
import 'package:vs_flutter/models/models.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({Key? key}) : super(key: key);
  final eploreServices = MockFooderlichService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: eploreServices.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return RecipeGridView(recipes: snapshot.data ?? []);
        } else {
          // ignore: prefer_const_constructors
          return Center(
            child: const CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
