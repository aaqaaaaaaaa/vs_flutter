import 'package:flutter/material.dart';
import 'package:vs_flutter/models/models.dart';

class RecipeThumbnail extends StatelessWidget {
  const RecipeThumbnail({Key? key, required this.recipe}) : super(key: key);
  final SimpleRecipe recipe;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              child: Image.asset(
                recipe.dishImage,
                fit: BoxFit.cover,
                width: 350,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Text(
            recipe.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(recipe.duration,style: Theme.of(context).textTheme.bodyText1,)
        ],
      ),
    );
  }
}
