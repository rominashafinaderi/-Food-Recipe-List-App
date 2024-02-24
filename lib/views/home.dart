import 'package:flutter/material.dart';
import 'package:visualstudio_test/models/recipe.api.dart';
import 'package:visualstudio_test/models/recipe.dart';
import 'package:visualstudio_test/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState    extends State<HomePage> {
 late  List<Recipe> _recipe;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  // Future <void> getRecipes() async{
  //   _recipe = await RecipeApi.getRecipe();
  //   setState(() {
  //     isLoading = true;
  //   });
  // }
  Future<void> getRecipes() async{
    _recipe = await RecipeApi.getRecipe();
    setState(() {
      isLoading = false;
    });
    print(_recipe);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.restaurant_menu),
          SizedBox(
            width: 10,
          ),
          Text('food recipe')
        ]),
      ),
      body:isLoading?
        const Center(child: CircularProgressIndicator(),):
        ListView.builder(
          itemCount: _recipe.length,
          itemBuilder: (context,index){
            return RecipeCard(
              title: _recipe[index].name,
             cookTime: _recipe[index].totalTime,
              rating: _recipe[index].rating.toString(),
               thumbnailUrl:_recipe[index].images); 

          }
          ) ,
    );
  }
}
