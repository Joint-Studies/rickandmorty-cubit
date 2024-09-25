import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/response_entity.dart';
import '../../domain/usecases/characters_usecase.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersUsecase usecase;
  CharactersCubit(this.usecase) : super(CharactersInitial());

  Future<void> getCharacter() async {
    emit(CharactersLoading());
    final response = await usecase.call();
    emit(
      CharactersLoaded(
        responseEntity: response,
      ),
    );
  }
}
