import 'package:audioplayers/audioplayers.dart';

class SoundLogic {
  static const SOUND_DATA_UP = "sounds/count-up.mp3";
  static const SOUND_DATA_DOWN = "sounds/count-down.mp3";
  static const SOUND_DATA_RESET = "sounds/count-reset.mp3";

  final audioPlayer = AudioPlayer();

  void playUpSound() {
    audioPlayer.play(AssetSource(SOUND_DATA_UP));
  }

  void playDownSound() {
    audioPlayer.play(AssetSource(SOUND_DATA_DOWN));
  }

  void playRestSound() {
    audioPlayer.play(AssetSource(SOUND_DATA_RESET));
  }

}