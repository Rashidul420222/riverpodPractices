import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './src/helloWorld.dart';
import './src/counterApp.dart';

void main() => runApp(ProviderScope(
  
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppList(),
      routes: {
        HelloWorld.id: (context) => HelloWorld(),
        CounterApp.id: (context) => CounterApp(),
      },
    );
  }
}

class AppList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RaisedButton(
            child: Text('Hello World App'),
            onPressed: () => Navigator.pushNamed(context, HelloWorld.id),
          ),
          RaisedButton(
            child: Text('Counter App'),
            onPressed: () => Navigator.pushNamed(context, CounterApp.id),
          ),
        ],
      ),
    );
  }
}
