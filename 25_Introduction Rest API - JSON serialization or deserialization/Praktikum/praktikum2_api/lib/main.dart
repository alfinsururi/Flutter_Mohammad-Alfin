import 'package:flutter/material.dart';

import 'image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 2 API',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Praktikum 2 API'),
        ),
        body: const Center(
          child: ImageWidget(),
        ),
      ),
    );
  }
}