import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'data/count_data.dart';

final titleProvider = Provider<String>((ref) {
  return "Riverpod Demo ホームページ";
});

// 上とは結果は同じだが別の書き方
final messageProvider = Provider<String>((ref) => "ボタンを押して");

final countProvider = StateProvider<int>((ref) => 0);

final countDataProvider = StateProvider<CountData>(
  (ref) => CountData(count: 0, countUp: 0, countDown: 0),
);
