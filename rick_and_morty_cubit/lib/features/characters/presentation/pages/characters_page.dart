import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_cubit/features/characters/presentation/cubit/characters_cubit.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoaded) {
            return ListView.builder(
                itemCount: state.responseEntity.charactersEntity?.length,
                itemBuilder: (context, position) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Image.network(state.responseEntity.charactersEntity?[position].image ?? ''),
                    ),
                    title: Text(state.responseEntity.charactersEntity?[position].name ?? 'Nome não encotrado'),
                    subtitle:
                        Text(state.responseEntity.charactersEntity?[position].species ?? 'Especie não localizada'),
                  );
                });
          }
          return const SizedBox();
        },
      ),
    );
  }
}
