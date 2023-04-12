import 'package:flutter/material.dart';
import 'package:form_tugas/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation){
                  return const HomePage();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final tween = Tween(begin: 0.0,
                  end: 1.0);
                  return FadeTransition(opacity: animation.drive(tween),
                  child: child,);
                } ,
              ),
              );
              }, 
              child: const Text('Ke Halaman Create Contact'),
            ),

          ],
        ),
      ),
    );
  }
}