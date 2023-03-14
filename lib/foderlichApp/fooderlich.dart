import 'package:flutter/material.dart';
import 'package:vs_flutter/screens/explore_screen.dart';
import 'package:vs_flutter/screens/recipeScreen.dart';
import 'package:vs_flutter/screens/recipes_screen.dart';
import 'fooderlich_theme.dart';

class Fooderlich extends StatefulWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  _FooderlichState createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  final theme = FooderlichTheme.dark();
  int _selectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: theme.textTheme.headline6,
          ),
          centerTitle: true,
        ),
        body: pages[_selectionIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onIttemTapped,
          currentIndex: _selectionIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card2'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card3'),
          ],
        ));
  }

  static List<Widget> pages = [
    const ExploreScreen(),
    RecipeScreen(),
    RecipeScreenSliver()
    // const Card2(),
    // const Card3(),
  ];
  void _onIttemTapped(int index) {
    setState(() {
      _selectionIndex = index;
    });
  }
}
