import 'package:flutter/material.dart';
import 'package:vs_flutter/foderlichApp/cards/recipe_thumbnail.dart';
import 'package:vs_flutter/models/models.dart';

class RecipeGridView extends StatelessWidget {
  const RecipeGridView({Key? key, required this.recipes}) : super(key: key);
  final List<SimpleRecipe> recipes;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: GridView.builder(
        itemCount: recipes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index){
            return RecipeThumbnail(recipe: recipes[index]);
          }),
    );
  }
}
