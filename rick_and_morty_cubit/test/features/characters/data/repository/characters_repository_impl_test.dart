import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty_cubit/core/api/dio_client.dart';
import 'package:rick_and_morty_cubit/features/characters/data/datasources/characters_remote_datasource.dart';

class MockCharactersRemoteDataSource extends Mock implements CharactersRemoteDatasourceImpl {}

class DioMock extends Mock implements DioClient {}

void main() {
  late DioMock dioMock;
  late MockCharactersRemoteDataSource remoteDataSource;
  late CharactersRemoteDatasourceImpl datasourceImpl;

  setUp(() {
    dioMock = DioMock();
    remoteDataSource = MockCharactersRemoteDataSource();
    datasourceImpl = CharactersRemoteDatasourceImpl(dioClient: dioMock);
  });

  test('should show return the loaded entity', () {});
}
