import 'package:rick_and_morty_cubit/features/characters/domain/entities/response_entity.dart';
import 'package:rick_and_morty_cubit/features/characters/domain/repositories/characters_repository.dart';

class CharactersUsecase {
  final CharactersRepository charactersRepository;

  CharactersUsecase({
    required this.charactersRepository,
  });

  Future<ResponseEntity> call() async {
    return await charactersRepository.getCharacterResponse();
  }
}
