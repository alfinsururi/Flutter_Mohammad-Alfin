import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({required this.imageUrl, Key? key}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.network(imageUrl),
      ),
    );
  }
}