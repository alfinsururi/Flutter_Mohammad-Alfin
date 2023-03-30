import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: [ 
        Icon(
          Icons.favorite,
          color: Colors.blue,
          size: 24.0,
        ),
        Icon(
          Icons.beach_access,
          color: Colors.blue,
          size: 36.0,
        ),
        Icon(
          Icons.accessible_rounded,
          color: Colors.blue,
          size: 36.0,
        ),
        Icon(
          Icons.account_balance,
          color: Colors.blue,
          size: 36.0,
        ),
        const Icon(
          Icons.add_to_photos,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_to_home_screen,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_to_drive,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_task,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_shopping_cart,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_road,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_reaction,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_photo_alternate,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_outlined,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_moderator,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_location,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_link,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_ic_call,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_home_work,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_comment,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_circle,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_chart,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_card,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_call,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_box_outlined,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_business,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_box,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_alert,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_alarm,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add_a_photo,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.add,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.adb,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.ad_units,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.account_tree,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.account_box,
          color: Colors.blue,
          size: 30.0,
        ),
        const Icon(
          Icons.account_balance_wallet,
          color: Colors.blue,
          size: 30.0,
        ),
      ]
    );
  }
}