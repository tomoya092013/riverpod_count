import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_count/provider.dart';

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
              ref.watch(countProvider).toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () => ref.read(countProvider.notifier).state++,
                  tooltip: 'Increment',// モバイルでは長押しの時に表示される
                  child: Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  onPressed: () => ref.read(countProvider.notifier).state++,
                  child: const Icon(CupertinoIcons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("1"),Text("2"),
            ],)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(countProvider.notifier).state++,
        child: const Icon(CupertinoIcons.refresh),
      ),
    );
  }
}
