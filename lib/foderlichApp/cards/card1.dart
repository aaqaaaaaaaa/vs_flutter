// import 'package:flutter/material.dart';
// import 'package:vs_flutter/foderlichApp/fooderlich_theme.dart';

// class Card1 extends StatefulWidget {
//   const Card1({Key? key}) : super(key: key);

//   @override
//   _Card1State createState() => _Card1State();
// }

// class _Card1State extends State<Card1> {
//   final String category = 'Editor\'s Choise';
//   final String title = 'The Art of Dough';
//   final String description = 'Learn to make the perfect bread.';
//   final String chef = 'Ray Wenderlich';

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         constraints: const BoxConstraints.expand(
//           height: 450,
//           width: 350,
//         ),
//         decoration: BoxDecoration(
//             image: const DecorationImage(
//               image: AssetImage('assets/image/mag1.png'),
//               fit: BoxFit.cover,
//             ),
//             borderRadius: BorderRadius.circular(10)),
//         child: Stack(
//           children: [
//             Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,

//               children: [
//                 Text(
//                   category,
//                   style: FooderlichTheme.darkTextTheme.bodyText1,
//                 ),
//                 Text(
//                   title,
//                   style: FooderlichTheme.darkTextTheme.headline2,
//                 ),
//               ],
//             ),
//             Positioned(
//               bottom:5,
//               right: 0,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     description,
//                     style: FooderlichTheme.darkTextTheme.bodyText1,
//                   ),
//                   Text(
//                     chef,
//                     style: FooderlichTheme.darkTextTheme.bodyText1,
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:vs_flutter/models/explore_recipe.dart';

import '../fooderlich_theme.dart';
import 'package:vs_flutter/models/models.dart';


class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card1({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              recipe.subtitle,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                recipe.title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                recipe.message,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                recipe.authorName,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
