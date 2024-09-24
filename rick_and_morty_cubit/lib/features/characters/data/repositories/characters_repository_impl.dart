import '../datasources/characters_remote_datasource.dart';
import '../../domain/entities/response_entity.dart';

import '../../domain/repositories/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDatasource remoteDatasource;

  CharactersRepositoryImpl({
    required this.remoteDatasource,
  });

  @override
  Future<ResponseEntity> getCharacterResponse() async {
    final response = await remoteDatasource.getCharactersResponse();
    return response.toEntity();
  }
}
