import 'package:flutter/material.dart';
import 'package:flutter_getx_dio_practice/json_data_iOne/controllers/screens/product_screen.dart';
import 'package:flutter_getx_dio_practice/test_getx_dio01/screens/home.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmployeeScreen(),
    );
  }
}
