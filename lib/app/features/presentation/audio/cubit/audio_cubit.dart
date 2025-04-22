import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'audio_state.dart';

class AudioCubit extends Cubit<AudioState> {
  final AudioPlayer _player = AudioPlayer();

  AudioCubit() : super(const AudioState.paused()) {
    _initialize();
  }

  Future<void> _initialize() async {
    await _player.setAsset('assets/audio/harry_potter_theme.mp3');
    _player.setLoopMode(LoopMode.all);
    await _player.play();

    // 🔁 İlk durumu doğru yansıt
    emit(_player.playing
        ? const AudioState.playing()
        : const AudioState.paused());

    // 🔁 Bundan sonra değişimleri dinle
    _player.playerStateStream.listen((state) {
      final isActuallyPlaying = state.playing && state.processingState == ProcessingState.ready;
      emit(isActuallyPlaying
          ? const AudioState.playing()
          : const AudioState.paused());
    });
  }

  Future<void> toggleAudio() async {
    if (_player.playing) {
      await _player.pause();
    } else {
      await _player.play();
    }
    // 👇 Buraya emit eklemiyoruz çünkü stream zaten state değişimini dinliyor
  }

  @override
  Future<void> close() {
    _player.dispose();
    return super.close();
  }
}
