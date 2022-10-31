import 'package:flutter/material.dart';
import 'package:mobx_code/testing/observables_Actions_reactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: ObservableTestClassWithStore()),
    );
  }
}
