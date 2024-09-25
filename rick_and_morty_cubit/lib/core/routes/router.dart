import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routes.dart';
import '../../features/characters/presentation/pages/characters_page.dart';
import '../../features/home/pages/home_page.dart';

import '../../features/characters/presentation/cubit/characters_cubit.dart';
import '../../injection_container.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    final charactersCubit = sl<CharactersCubit>();

    switch (settings.name) {
      case Routes.characters:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: charactersCubit..getCharacter(),
                  child: const CharactersPage(),
                ));
      case Routes.homePage:
      default:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
    }
  }
}
