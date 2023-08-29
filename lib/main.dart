import 'package:flutter/material.dart';
import 'package:food_delivery/screens/product_details.dart';
import 'package:food_delivery/screens/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailsScreen(),
    ),
  );
}
