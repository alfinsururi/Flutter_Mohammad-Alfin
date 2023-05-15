import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/foods_viewmodel.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods'),
      ),
      body: Consumer<FoodViewModel>(
        builder: (context, model, child) {
          if (model.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (model.foods.isEmpty) {
            return Center(
              child: Text('No food available'),
            );
          }

          return ListView.builder(
            itemCount: model.foods.length,
            itemBuilder: (context, index) {
              final food = model.foods[index];

              return ListTile(
                leading: Image.network(food.image),
                title: Text(food.name),
                subtitle: Text(food.description),
              );
            },
          );
        },
      ),
    );
  }
}
