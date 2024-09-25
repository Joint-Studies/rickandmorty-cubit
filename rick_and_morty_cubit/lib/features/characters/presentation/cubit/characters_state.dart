part of 'characters_cubit.dart';

abstract class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final ResponseEntity responseEntity;

  CharactersLoaded({required this.responseEntity});
}

class CharactersError extends CharactersState {
  final String? msgError;

  CharactersError({required this.msgError});
}
