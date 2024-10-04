import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty_cubit/features/characters/data/datasources/characters_remote_datasource.dart';
import 'package:rick_and_morty_cubit/features/characters/data/repositories/characters_repository_impl.dart';

import '../../../../mocks/character_mock.dart';

class MockCharactersRemoteDataSource extends Mock implements CharactersRemoteDatasourceImpl {}

void main() {
  late CharactersRepositoryImpl repositoryImpl;
  late MockCharactersRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockCharactersRemoteDataSource();
    repositoryImpl = CharactersRepositoryImpl(remoteDatasource: mockRemoteDataSource);
  });

  test(
    'should show return the loaded entity',
    () async {
      //Arrange
      when(() => mockRemoteDataSource.getCharactersResponse()).thenAnswer((_) async => characterResponse);

      //Act
      final response = await repositoryImpl.getCharacterResponse();

      // Assert
      expect(response, characterResponseEntity);
    },
  );
}
