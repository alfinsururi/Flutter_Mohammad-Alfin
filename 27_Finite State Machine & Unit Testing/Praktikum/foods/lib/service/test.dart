import 'package:flutter_test/flutter_test.dart';
import 'foods_service.dart';

void main() {
  group('FoodService', () {
    test('getFoods returns list of foods', () async {
      final foodService = MockFoodService();

      final foods = await foodService.getFoods();

      expect(foods, isNotEmpty);
      expect(foods.length, 3);

      final firstFood = foods[0];
      expect(firstFood.id, 1);
      expect(firstFood.name, 'Nasi Goreng');
      expect(firstFood.description, 'Nasi goreng spesial dengan ayam, sayuran, dan telur');
      expect(firstFood.image, 'https://picsum.photos/id/1/200/300');
    });

    test('getFoods throws exception when request fails', () async {
      final foodService = MockFoodService();

      // Force an error to occur
      expect(() async => await foodService.getFoods(), throwsException);
    });
  });
}
