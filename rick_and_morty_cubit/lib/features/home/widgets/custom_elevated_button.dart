import 'package:flutter/material.dart';
import 'package:rick_and_morty_cubit/core/utils/theme_extensions_ui.dart';

class CustomElevatedButton extends StatelessWidget {
  final String textButton;

  const CustomElevatedButton({
    required this.textButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.primaryColor,
        shadowColor: context.secondaryColor,
        elevation: 10,
        side: BorderSide(
          color: context.secondaryColor,
          width: 5,
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Text(
          textButton,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
