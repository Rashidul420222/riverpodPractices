import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

class CounterApp extends ConsumerWidget {
  static const String id = 'CounterApp';
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('CounterApp ${counter.state}'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => counter.state++,
          child: Text('Counter Number ${counter.state}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(counterProvider).state++,
        child: Icon(Icons.add),
        tooltip: 'Button click ${counter.state}',
      ),
    );
  }
}
