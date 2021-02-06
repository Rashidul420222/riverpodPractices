import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider((_) => 'Helloworld');

void main() => runApp(ProviderScope(
      child: MyApp(),
    ));

class MyApp extends ConsumerWidget {
  @override
  Widget build(context, watch) {
    final String value = watch(helloWorldProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exaple'),
        ),
        body: Text(value),
      ),
    );
  }
}
