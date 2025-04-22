import 'package:bloc/bloc.dart';
import 'package:daynex_demo/app/features/presentation/character/cubit/character_state.dart';
import 'package:daynex_demo/app/features/data/datasources/service/character_service.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterService _characterService;

  CharacterCubit(this._characterService) : super(const CharacterState.initial());

  Future<void> fetchCharacters(String endpoint) async {
    emit(const CharacterState.loading());
    try {
      final result = await _characterService.fetchCharacters(endpoint);
      if (result.success) {
        emit(CharacterState.loaded(result.data!));
      } else {
        emit(CharacterState.error(result.message ?? "Something went wrong"));
      }
    } catch (e) {
      emit(CharacterState.error(e.toString()));
    }
  }
}
