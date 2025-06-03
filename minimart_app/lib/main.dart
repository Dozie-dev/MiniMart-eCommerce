import 'package:flutter/material.dart';
import 'package:minimart_app/pages/main_screens/homepage.dart';
import 'package:get/get.dart';
import 'package:minimart_app/pages/main_screens/product_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // My splashscreen delay
  await Future.delayed(Duration(seconds: 2));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsDetails(),
    );
  }
}
