import '../entities/response_entity.dart';

abstract class CharactersRepository {
  Future<ResponseEntity> getCharacterResponse();
}
