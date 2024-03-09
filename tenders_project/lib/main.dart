import 'package:flutter/material.dart';
import 'menu.dart';
import 'frigo.dart';
import 'dataclass.dart';
// main.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Planner App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPage(),
        '/foodList': (context) => FoodListPage(),
      },
    );
  }
}