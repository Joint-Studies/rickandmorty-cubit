import 'package:rick_and_morty_cubit/core/api/dio_client.dart';
import 'package:rick_and_morty_cubit/core/api/endpoints.dart';

import '../models/response_model.dart';

abstract class CharactersRemoteDatasource {
  Future<ResponseModel> getCharactersResponse();
}

class CharactersRemoteDatasourceImpl implements CharactersRemoteDatasource {
  final DioClient dioClient;

  CharactersRemoteDatasourceImpl({
    required this.dioClient,
  });

  @override
  Future<ResponseModel> getCharactersResponse() async {
    final response = await dioClient.get(endpoint: Endpoints.character);
    return ResponseModel.fromJson(response);
  }
}
