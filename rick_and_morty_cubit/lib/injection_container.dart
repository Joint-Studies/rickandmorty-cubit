import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_cubit/core/api/dio_client.dart';
import 'package:rick_and_morty_cubit/features/characters/data/datasources/characters_remote_datasource.dart';
import 'package:rick_and_morty_cubit/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:rick_and_morty_cubit/features/characters/domain/repositories/characters_repository.dart';
import 'package:rick_and_morty_cubit/features/characters/presentation/cubit/characters_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton(Dio());
  sl.registerSingleton<DioClient>(DioClientImpl());

  sl.registerSingleton<CharactersRemoteDatasource>(
    CharactersRemoteDatasourceImpl(
      dioClient: sl(),
    ),
  );

  sl.registerSingleton<CharactersRepository>(
    CharactersRepositoryImpl(
      remoteDatasource: sl(),
    ),
  );

  sl.registerSingleton(
    CharactersCubit(
      sl(),
    ),
  );
}
