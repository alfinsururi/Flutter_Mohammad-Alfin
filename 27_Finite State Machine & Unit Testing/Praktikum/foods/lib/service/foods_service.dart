import 'dart:convert';
import 'package:http/http.dart' as http;
import '../module/model/food_model.dart';

abstract class FoodService {
  Future<List<Food>> getFoods();
}

class RealFoodService implements FoodService {
  @override
  Future<List<Food>> getFoods() async {
    final response = await http.get(Uri.parse('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods'));

    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);

      return json.map((data) => Food.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load foods');
    }
  }
}

class MockFoodService implements FoodService {
  @override
  Future<List<Food>> getFoods() {
    return Future.value([
      Food(id: 1, name: 'Nasi Goreng', description: 'Nasi goreng spesial dengan ayam, sayuran, dan telur', image: 'https://picsum.photos/id/1/200/300'),
      Food(id: 2, name: 'Mie Goreng', description: 'Mie goreng spesial dengan daging sapi, sayuran, dan telur', image: 'https://picsum.photos/id/2/200/300'),
      Food(id: 3, name: 'Bakso', description: 'Bakso spesial dengan kuah kaldu sapi, mie, dan sayuran', image: 'https://picsum.photos/id/3/200/300'),
    ]);
  }
}
