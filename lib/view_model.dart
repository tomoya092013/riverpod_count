import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_count/logic/logic.dart';
import 'package:riverpod_count/logic/sound_logic.dart';
import 'package:riverpod_count/provider.dart';

class ViewModel {
  Logic _logic = Logic();
  SoundLogic _soundLogic = SoundLogic();

  late WidgetRef _ref;

  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  String get count => _ref.watch(countDataProvider).count.toString();

  String get countUp => _ref.watch(countDataProvider).countUp.toString();

  String get countDown => _ref.watch(countDataProvider).countDown.toString();

  void onIncrease() {
    _logic.increase();
    _soundLogic.playUpSound();
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }

  void onDecrease() {
    _logic.decrease();
    _soundLogic.playDownSound();
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }

  void onReset() {
    _logic.reset();
    _soundLogic.playRestSound();
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }
}
