import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/popular_food.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'home/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,
      ),
      home: const popular_food(),
    );
  }
}

