import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_count/data/count_data.dart';
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
    update();

  }

  void onDecrease() {
    _logic.decrease();
    update();
  }

  void onReset() {
    _logic.reset();
    update();
  }

  void update() {
    CountData oldValue = _ref.watch(countDataProvider.notifier).state;
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
    CountData newValue = _ref.watch(countDataProvider.notifier).state;
    _soundLogic.changedSound(oldValue, newValue);
  }
}
