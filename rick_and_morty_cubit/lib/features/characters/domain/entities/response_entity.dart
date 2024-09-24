import 'package:equatable/equatable.dart';
import 'characters_entity.dart';
import 'info_entity.dart';

class ResponseEntity extends Equatable {
  final InfoEntity? infoEntity;
  final List<CharactersEntity>? charactersEntity;

  ResponseEntity({
    this.infoEntity,
    this.charactersEntity,
  });
  @override
  List<Object?> get props => [
        infoEntity,
        charactersEntity,
      ];
}
