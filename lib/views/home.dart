import 'package:flutter/material.dart';
import 'package:visualstudio_test/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.restaurant_menu),
          SizedBox(
            width: 10,
          ),
          Text('food recipe')
        ]),
      ),
      body: RecipeCard(
          cookTime: 'eeda', rating: 'da', thumbnailUrl: '', title: 'aeeeeee'),
    );
  }
}
