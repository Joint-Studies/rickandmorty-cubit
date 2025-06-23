import 'package:flutter/material.dart';
import 'package:rick_and_morty_cubit/core/routes/routes.dart';

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
                  image: AssetImage('assets/images/logo1.png'),
                ),
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'O guia definitivo',
                  style: TextStyle(
                    fontFamily: 'RickAndMortyFont',
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.characters);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'Personagens',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'RickAndMortyFont',
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'Lugares',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'RickAndMortyFont',
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'Episodios',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'RickAndMortyFont',
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
