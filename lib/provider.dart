import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final titleProvider = Provider<String>((ref) {
  return "Riverpod Demo ホームページ";
});

// 上とは結果は同じだが別の書き方
final messageProvider = Provider<String>((ref) => "ボタンを押して");

final countProvider = StateProvider<int>((ref) => 0);
