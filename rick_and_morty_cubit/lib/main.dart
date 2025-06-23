import 'package:flutter/material.dart';
import 'package:rick_and_morty_cubit/core/routes/router.dart';
import 'package:rick_and_morty_cubit/core/routes/routes.dart';
import 'package:rick_and_morty_cubit/core/utils/theme_data_ui.dart';
import 'features/home/pages/home_page.dart';
import 'injection_container.dart' as sl;

void main() async {
  await sl.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _router.generateRoutes,
      initialRoute: Routes.homePage,
      theme: ThemeDataUi.theme,
      home: const HomePage(),
    );
  }
}
