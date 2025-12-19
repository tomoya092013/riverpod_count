import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_count/logic.dart';
import 'package:riverpod_count/provider.dart';

class ViewModel {
  Logic _logic = Logic();

  late WidgetRef _ref;

  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  String get count => _ref.watch(countDataProvider).count.toString();

  String get countUp => _ref.watch(countDataProvider).countUp.toString();

  String get countDown => _ref.watch(countDataProvider).countDown.toString();

  void onIncrease() {
    _logic.increase();
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }

  void onDecrease() {
    _logic.decrease();
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }

  void onReset() {
    _logic.reset();
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }
}
