import 'package:daynex_demo/app/common/models/character_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_state.freezed.dart'; 

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial() = _Initial;
  const factory CharacterState.loading() = _Loading;
  const factory CharacterState.loaded(List<CharacterModel> characters) = _Loaded;
  const factory CharacterState.error(String message) = _Error;
}
