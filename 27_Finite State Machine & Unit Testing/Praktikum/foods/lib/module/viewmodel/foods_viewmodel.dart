import 'package:flutter/material.dart';

import '../../service/foods_service.dart';
import '../model/food_model.dart';


class FoodViewModel extends ChangeNotifier {
  final FoodService _foodService = FoodService();
  bool _isLoading = false;
  List<Food> _foods = [];

  bool get isLoading => _isLoading;
  List<Food> get foods => _foods;

  void getFoods() async {
    _isLoading = true;
    notifyListeners();

    _foods = await _foodService.getFoods();

    _isLoading = false;
    notifyListeners();
  }
}
