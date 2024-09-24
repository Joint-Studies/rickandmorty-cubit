import 'package:equatable/equatable.dart';

import '../../domain/entities/info_entity.dart';

class InfoModel extends Equatable {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  const InfoModel({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        count: json['count'] ?? 0,
        pages: json['pages'] ?? 0,
        next: json['next'] ?? '',
        prev: json['prev'] ?? '',
      );

  InfoEntity toEntity() => InfoEntity(
        count: count,
        pages: pages,
        next: next,
        prev: prev,
      );

  @override
  List<Object?> get props => [
        count,
        pages,
        next,
        prev,
      ];
}
