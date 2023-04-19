import 'dart:convert';

import 'package:http/http.dart' as http;

import 'image_model.dart';

class ImageFetcher {
  static Future<ImageModel> fetchImage() async {
    final response =
        await http.get(Uri.parse('https://avatars.dicebear.com/api/avataaars/flutter_app.png'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return ImageModel.fromJson(json);
    } else {
      throw Exception('Failed to load image');
    }
  }
}