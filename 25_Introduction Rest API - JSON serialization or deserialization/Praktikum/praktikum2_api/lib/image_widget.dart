import 'package:flutter/material.dart';

import 'image_fetcher.dart';
import 'image_model.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  late Future<ImageModel> _imageModel;

  @override
  void initState() {
    super.initState();
    _imageModel = ImageFetcher.fetchImage();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ImageModel>(
      future: _imageModel,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Image.network(snapshot.data!.imageUrl);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}