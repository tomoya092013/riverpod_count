import 'package:audioplayers/audioplayers.dart';

import '../data/count_data.dart';

class SoundLogic {
  static const SOUND_DATA_UP = "sounds/count-up.mp3";
  static const SOUND_DATA_DOWN = "sounds/count-down.mp3";
  static const SOUND_DATA_RESET = "sounds/count-reset.mp3";

  final audioPlayer = AudioPlayer();

  void changedSound(CountData oldValue, CountData newValue) {
    if (newValue.count == 0 &&
        newValue.countUp == 0 &&
        newValue.countDown == 0) {
      playRestSound();
    } else if (oldValue.countUp + 1 == newValue.countUp) {
      playUpSound();
    } else if (oldValue.countDown + 1 == newValue.countDown) {
      playDownSound();
    }
  }

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
