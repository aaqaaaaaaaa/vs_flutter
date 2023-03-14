import 'package:flutter/material.dart';
import 'package:vs_flutter/foderlichApp/cards/card1.dart';
import 'package:vs_flutter/foderlichApp/cards/card2.dart';
import 'package:vs_flutter/foderlichApp/cards/card3.dart';
import 'package:vs_flutter/models/models.dart';

class TodayRecipeListView extends StatefulWidget {
  const TodayRecipeListView({Key? key, required this.recipes})
      : super(key: key);
  final List<ExploreRecipe> recipes;

  @override
  _TodayRecipeListViewState createState() => _TodayRecipeListViewState();
}

class _TodayRecipeListViewState extends State<TodayRecipeListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final recipe = widget.recipes[index];
                  return buildCard(recipe);
                },
                separatorBuilder: (context, inex) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemCount: widget.recipes.length),
          )
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('This Card doesn\'t exits yet');
    }
  }
}
