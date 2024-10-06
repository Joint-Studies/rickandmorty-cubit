import 'package:flutter/material.dart';
import 'package:rick_and_morty_cubit/core/utils/theme_extensions_ui.dart';
import 'package:rick_and_morty_cubit/features/home/widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: size.width,
              height: 200,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/images.png'),
                ),
              ),
            ),
          ),
          const CustomElevatedButton(textButton: 'Personagens'),
          const SizedBox(
            height: 15,
          ),
          const CustomElevatedButton(textButton: 'Lugares'),
          const SizedBox(
            height: 15,
          ),
          const CustomElevatedButton(textButton: 'Episodes'),
        ],
      ),
    );
  }
}
