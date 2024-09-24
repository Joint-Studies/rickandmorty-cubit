import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_cubit/features/characters/domain/entities/response_entity.dart';

import 'characters_model.dart';
import 'info_model.dart';

class ResponseModel extends Equatable {
  final InfoModel? infoModel;
  final List<CharactersModel>? charactersModel;

  const ResponseModel({
    required this.infoModel,
    required this.charactersModel,
  });

  factory ResponseModel.fromJson(dynamic json) => ResponseModel(
        infoModel: InfoModel.fromJson(json['info']),
        charactersModel: json['characters'] != null
            ? (json['characters'] as List).map((e) => CharactersModel.fromJson(e)).toList()
            : null,
      );

  ResponseEntity toEntity() => ResponseEntity(
        infoEntity: infoModel?.toEntity(),
        charactersEntity: charactersModel?.map((e) => e.toEntity()).toList(),
      );

  @override
  List<Object?> get props => [
        infoModel,
        charactersModel,
      ];
}
