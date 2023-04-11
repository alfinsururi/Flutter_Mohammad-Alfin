import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'image_bloc.dart';

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
    return BlocProvider<ImageBloc>(
      create: (_) => ImageBloc(),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildImage('https://picsum.photos/id/0/200/300', context),
          _buildImage('https://picsum.photos/id/1/200/300', context),
          _buildImage('https://picsum.photos/id/2/200/300', context),
          _buildImage('https://picsum.photos/id/3/200/300', context),
        ],
      ),
    );
  }

  Widget _buildImage(String imageUrl, BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<ImageBloc>(context).add(IncreaseViewCount());
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return BlocBuilder<ImageBloc, int>(
              builder: (context, views) {
                return Container(
                  height: 200,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Views: $views',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: Image.network(imageUrl),
    );
  }
}
