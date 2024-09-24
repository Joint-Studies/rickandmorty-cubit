import 'package:equatable/equatable.dart';

class LocationModel extends Equatable {
  final String? name;
  final String? url;

  LocationModel({
    this.name,
    this.url,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        name: json['name'] ?? '',
        url: json['url'] ?? '',
      );
  @override
  List<Object?> get props => [
        name,
        url,
      ];
}
