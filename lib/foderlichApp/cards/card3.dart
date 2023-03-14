// // ignore_for_file: avoid_print

// import 'package:flutter/material.dart';
// import 'package:vs_flutter/foderlichApp/fooderlich_theme.dart';

// class Card3 extends StatefulWidget {
//   const Card3({Key? key}) : super(key: key);

//   @override
//   _Card3State createState() => _Card3State();
// }

// class _Card3State extends State<Card3> {
//   Color chipBackgroundcolor =Colors.black.withOpacity(0.6);
//   TextStyle chiptext = FooderlichTheme.darkTextTheme.bodyText1 as TextStyle;
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
//               image: AssetImage('assets/image/mag2.png'),
//               fit: BoxFit.cover,
//             ),
//             borderRadius: BorderRadius.circular(10)),
//         child: Stack(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.black.withOpacity(0.6)),
//             ),
//             Container(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const Icon(
//                     Icons.book,
//                     color: Colors.white,
//                     size: 40,
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   Text(
//                     "Recipe Trends",
//                     style: FooderlichTheme.darkTextTheme.headline3,
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   )
//                 ],
//               ),
//             ),
//             Center(
//               child: Wrap(
//                 spacing: 12,
//                 runSpacing: 12,
//                 children: [
//                   Chip(
//                     label: Text(
//                       'Healthy',
//                       style: FooderlichTheme.darkTextTheme.bodyText1,
//                     ),
//                     backgroundColor: Colors.grey.withOpacity(0.7),
//                     onDeleted: () {
//                       print('Deleted!');
//                     },
//                   ),
//                   Chip(
//                     label: Text(
//                       'Vegan',
//                       style: chiptext,
//                     ),
//                     backgroundColor: Colors.grey.withOpacity(0.7),
//                     onDeleted: deleted,
//                   ),
//                   chipWidget(label: 'Carrots'),
//                   chipWidget(label: 'Greens'),
//                   chipWidget(label: 'Wheat'),
//                   chipWidget(label: 'Percetarian'),
//                   chipWidget(label: 'Mint'),
//                   chipWidget(label: 'Lemongrass'),
//                   chipWidget(label: 'Salad'),
//                   chipWidget(label: 'Water'),

//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//   deleted(){
//     print('Deleted');
//   }
//   Widget chipWidget({required String label}){
//     return Chip(label: Text(label, 
//     style: chiptext,
    
//     ),
//     backgroundColor: Colors.grey.withOpacity(0.7),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:vs_flutter/models/explore_recipe.dart';

import '../fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card3({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  List<Widget> createTagChips() {
    final chips = <Widget>[];
    recipe.tags.take(6).forEach((element) {
      final chip = Chip(
        label: Text(
          element,
          style: FooderlichTheme.darkTextTheme.bodyText1,
        ),
        backgroundColor: Colors.black.withOpacity(0.7),
      );
      chips.add(chip);
    });

    return chips;
  }

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
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(recipe.title,
                      style: FooderlichTheme.darkTextTheme.headline2),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  runSpacing: 12,
                  children: createTagChips()),
            ),
          ],
        ),
      ),
    );
  }
}
