import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_count/provider.dart';

import 'data/count_data.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(ref.watch(titleProvider)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(ref.watch(messageProvider)),
            const SizedBox(height: 16),
            const Text('You have pushed the button this many times:'),
            Text(
              ref.watch(countDataProvider).count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    final countData = ref.read(countDataProvider);
                    ref.read(countDataProvider.notifier).state = countData
                        .copyWith(
                          count: countData.count - 1,
                          countDown: countData.countDown + 1,
                        );
                  },
                  tooltip: 'Decrement',
                  child: const Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  onPressed: () {
                    final countData = ref.read(countDataProvider);
                    ref.read(countDataProvider.notifier).state = countData
                        .copyWith(
                          count: countData.count + 1,
                          countUp: countData.countUp + 1,
                        );
                  },
                  child: const Icon(CupertinoIcons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(ref.watch(countDataProvider).countDown.toString()),
                Text(ref.watch(countDataProvider).countUp.toString()),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final CountData countData = ref.read(countDataProvider);
          ref.read(countDataProvider.notifier).state = countData.copyWith(
            count: 0,
            countUp: 0,
            countDown: 0,
          );
        },
        child: const Icon(CupertinoIcons.refresh),
      ),
    );
  }
}
