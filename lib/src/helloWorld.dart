import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider((_) => 'Helloworld');

class HelloWorld extends ConsumerWidget {
  static const String id = 'helloWorld';
  @override
  Widget build(context, watch) {
    final String value = watch(helloWorldProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exaple'),
        ),
        body: Center(child: Text(value)),
      ),
    );
  }
}
