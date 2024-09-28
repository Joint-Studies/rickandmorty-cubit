import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty_cubit/features/characters/domain/repositories/characters_repository.dart';
import 'package:rick_and_morty_cubit/features/characters/domain/usecases/characters_usecase.dart';

class MockCharactersRepository extends Mock implements CharactersRepository {}

void main() {
  late CharactersUsecase usecase;
  late MockCharactersRepository repository;

  setUp(() {
    repository = MockCharactersRepository();
    usecase = CharactersUsecase(charactersRepository: repository);
  });

  test('Should get the entity loaded when it comes from the repository', () async {
    when(() => repository.getCharacterResponse()).thenAnswer((_) async => );
  });
}
