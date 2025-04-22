import 'package:just_audio/just_audio.dart';

final class AudioPlayerService {
  AudioPlayerService._();
  static final AudioPlayerService instance = AudioPlayerService._();

  final AudioPlayer _player = AudioPlayer();

  Future<void> init() async {
    await _player.setAsset('assets/audio/harry_potter_theme.mp3');
    _player.setLoopMode(LoopMode.one);
    _player.play();
  }

  Future<void> toggle() async {
    _player.playing ? await _player.pause() : await _player.play();
  }

  bool get isPlaying => _player.playing;

  void dispose() => _player.dispose();
}
