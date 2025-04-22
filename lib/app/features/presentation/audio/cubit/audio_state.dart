import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_state.freezed.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.playing() = AudioPlaying;
  const factory AudioState.paused() = AudioPaused;
}
