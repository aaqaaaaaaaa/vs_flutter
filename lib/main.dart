import 'package:flutter/material.dart';
import 'package:vs_flutter/foderlichApp/fooderlich.dart';
import 'package:vs_flutter/foderlichApp/fooderlich_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
      final theme = FooderlichTheme.dark();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const Fooderlich(),
    );
  }
}

