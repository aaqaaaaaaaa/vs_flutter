// import 'package:flutter/material.dart';
// import 'package:vs_flutter/foderlichApp/fooderlich_theme.dart';

// class Card2 extends StatefulWidget {
//   const Card2({Key? key}) : super(key: key);

//   @override
//   _Card2State createState() => _Card2State();
// }

// class _Card2State extends State<Card2> {
//   bool ontapped = false;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         constraints: const BoxConstraints.expand(
//           height: 450,
//           width: 350,
//         ),
//         decoration: BoxDecoration(
//             image: const DecorationImage(
//               image: AssetImage('assets/image/mag5.png'),
//               fit: BoxFit.cover,
//             ),
//             borderRadius: BorderRadius.circular(10)),
//         child: Stack(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(50),
                      //       border: Border.all(color: Colors.white, width: 5)),
                      //   child: ClipOval(
                      //     child: Image.asset(
                      //       'assets/image/author_katz.jpeg',
                      //       width: 50,
                      //     ),
                      //   ),
                      // ),
//                       const SizedBox(width: 8),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Mike Katz',
//                             style: FooderlichTheme.lightTextTheme.headline2,
//                           ),
//                           Text(
//                             'Smoothie Connoissuer',
//                             style: FooderlichTheme.lightTextTheme.headline3,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                     icon: Icon(
//                       ontapped
//                           ? Icons.favorite_border_outlined
//                           : Icons.favorite_sharp,
//                       size: 32,
//                       color: Colors.red,
//                     ),
//                     onPressed: () {
//                       setState(() {});
//                       ontapped = !ontapped;
//                       const snackBar = SnackBar(
//                         content: Text('Favorite Pressed'),
//                       );
//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//                 bottom: 16,
//                 right: 16,
//                 child: Text(
//                   'Recipe',
//                   style: FooderlichTheme.lightTextTheme.headline1,
//                 )),
//             Positioned(
//               left: 16,
//               bottom: 90,
//               child: RotatedBox(
//                   quarterTurns: 3,
//                   child: Text(
//                     'Smoothies',
//                     style: FooderlichTheme.lightTextTheme.headline1,
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../fooderlich_theme.dart';
import 'package:vs_flutter/models/models.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card2({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 5)),
              child: ClipOval(
                child: Image.asset(
                  'assets/image/author_katz.jpeg',
                  width: 50,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      recipe.title,
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        recipe.subtitle,
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
