import 'package:rick_and_morty_cubit/core/api/dio_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty_cubit/features/characters/data/datasources/characters_remote_datasource.dart';
import 'package:rick_and_morty_cubit/features/characters/data/models/characters_model.dart';
import 'package:rick_and_morty_cubit/features/characters/data/models/info_model.dart';
import 'package:rick_and_morty_cubit/features/characters/data/models/response_model.dart';
import 'package:test/test.dart';

import '../../../../mocks/character_mock.dart';

class DioMock extends Mock implements DioClient {}

void main() {
  late CharactersRemoteDatasourceImpl remoteDatasource;
  late DioMock dioMock;

  setUp(() {
    dioMock = DioMock();
    remoteDatasource = CharactersRemoteDatasourceImpl(dioClient: dioMock);
  });

  test(
    'Should show endpoints correctly ',
    () async {
      when(() => dioMock.get(endpoint: any(named: 'endpoint'))).thenAnswer((_) async => characterResponseFromJson);

      final response = await remoteDatasource.getCharactersResponse();

      expect(response, ResponseModel.fromJson(characterResponseFromJson));
      expect(response.charactersModel, isA<List<CharactersModel>>());
      expect(response.infoModel, isA<InfoModel>());
    },
  );
}

// flutter test --coverage && genhtml coverage/lcov.info -o coverage/html