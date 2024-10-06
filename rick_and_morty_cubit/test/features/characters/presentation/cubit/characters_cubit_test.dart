import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty_cubit/features/characters/domain/usecases/characters_usecase.dart';
import 'package:rick_and_morty_cubit/features/characters/presentation/cubit/characters_cubit.dart';

import '../../../../mocks/character_mock.dart';

class MockCharactersUseCase extends Mock implements CharactersUsecase {}

void main() {
  late CharactersCubit cubit;
  late MockCharactersUseCase usecase;

  setUp(() {
    usecase = MockCharactersUseCase();
    cubit = CharactersCubit(usecase);
  });

  blocTest<CharactersCubit, CharactersState>(
    'emits states [CharactersLoading, CharactersLoaded] when usecase is called',
    build: () {
      when(() => usecase.call()).thenAnswer((_) async => characterResponseEntity);
      return cubit;
    },
    act: (cubit) => cubit.getCharacter(),
    expect: () => [
      CharactersLoading(),
      CharactersLoaded(responseEntity: characterResponseEntity),
    ],
  );
}
