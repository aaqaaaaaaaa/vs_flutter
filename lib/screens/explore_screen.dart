import 'package:flutter/material.dart';
import 'package:vs_flutter/api/mock_fooderlich_service.dart';
import 'package:vs_flutter/components/today_recipe_list_view.dart';
import 'package:vs_flutter/models/models.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockservice = MockFooderlichService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockservice.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data?.todayRecipes ?? [];
            return ListView(
              children: [
                TodayRecipeListView(recipes: recipes),
                const SizedBox(height: 16),
                FriendPostListView(friendPost: snapshot.data?.friendPosts ?? [])
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
