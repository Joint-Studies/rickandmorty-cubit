import 'package:equatable/equatable.dart';
import '../../domain/entities/characters_entity.dart';
import 'location_model.dart';
import 'origin_model.dart';

class CharactersModel extends Equatable {
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

  const CharactersModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
    this.url,
    this.created,
    this.location,
    this.origin,
  });

  factory CharactersModel.fromJson(Map<String, dynamic> json) => CharactersModel(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        status: json['status'] ?? '',
        species: json['species'] ?? '',
        type: json['type'] ?? '',
        gender: json['gender'] ?? '',
        image: json['image'] ?? '',
        url: json['url'] ?? '',
        created: json['created'] ?? '',
        location: json['location'] != null ? LocationModel.fromJson(json['location']) : null,
        origin: json['origin'] != null ? OriginModel.fromJson(json['origin']) : null,
      );

  CharactersEntity toEntity() => CharactersEntity(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      image: image,
      url: url,
      created: created,
      location: location,
      origin: origin);

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
