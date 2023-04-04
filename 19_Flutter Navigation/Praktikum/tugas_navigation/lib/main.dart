import 'package:flutter/material.dart';
import 'package:tugas_assets/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout'),
          centerTitle: true,
        ),
        body: const GridViewWidget(),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        _buildImage('https://picsum.photos/id/0/200/300', context),
        _buildImage('https://picsum.photos/id/1/200/300', context),
        _buildImage('https://picsum.photos/id/2/200/300', context),
        _buildImage('https://picsum.photos/id/3/200/300', context),
        _buildImage('https://picsum.photos/id/4/200/300', context),
        _buildImage('https://picsum.photos/id/5/200/300', context),
        _buildImage('https://picsum.photos/id/6/200/300', context),
        _buildImage('https://picsum.photos/id/7/200/300', context),
      ],
    );
  }

Widget _buildImage(String imageUrl, BuildContext context) {
  return GestureDetector(
    onTap: () {
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            color: Colors.white,
            child: ListView(
              children: [
                Image.network(imageUrl),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                               NewPage(imageUrl: imageUrl),
                          ),
                        );
                      },
                      child: const Text('Ya'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Tidak'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    },
    child: Image.network(imageUrl),
  );
} }