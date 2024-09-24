import 'package:equatable/equatable.dart';

import '../../data/models/location_model.dart';
import '../../data/models/origin_model.dart';

class CharactersEntity extends Equatable {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final String? image;
  final String? url;
  final String? created;
  final LocationModel? location;
  final OriginModel? origin;

  const CharactersEntity({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
    this.created,
    this.url,
    this.location,
    this.origin,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        image,
        url,
        created,
        location,
        origin,
      ];
}
