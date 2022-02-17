import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wir_markt/recipe/view/recipe_list_loader.dart';

import '../bloc/recipe_bloc.dart';
import '../repository/recipe_repository.dart';

class RecipesView extends StatelessWidget {
  static Route<Object?> route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RecipesView());
  }

  const RecipesView({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return RecipeBloc(
            recipeRepository:
            RepositoryProvider.of<RecipeRepository>(context),
          );
        },
        child: const RecipeListLoader(),
      );
  }
}
